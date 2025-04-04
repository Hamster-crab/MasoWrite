#include <locale.h>
#include <ncurses.h>
#include <vector>
#include <string>
#include <fstream>
#include <iostream>

// モード定義
enum Mode { NORMAL, INSERT, COMMAND };

int main(int argc, char* argv[]) {
    setlocale(LC_ALL, "");   // 日本語対応
    initscr();
    raw();
    keypad(stdscr, TRUE);
    noecho();


    Mode mode = NORMAL;
    std::vector<std::wstring> buffer = {L""};
    int x = 0, y = 0;
    std::wstring message;

    // コマンドモード用
    std::wstring command;
    int command_cx = 0;

    // コマンドライン引数でファイル名を受け取る
    std::string filename = (argc > 1) ? argv[1] : "output.txt"; // 引数があればそのファイル、なければ "output.txt"

    // ファイルがあれば読み込む
    std::wifstream ifs(filename);
    if (ifs) {
        std::wstring line;
        while (std::getline(ifs, line)) {
            buffer.push_back(line);
        }
        ifs.close();
        message = L"Opened file: " + std::wstring(filename.begin(), filename.end());
    } else {
        message = L"Failed to open file: " + std::wstring(filename.begin(), filename.end());
    }

    wint_t ch;
    while (true) {
        clear();

        // テキスト描画（スクロール対応）
        int start_line = y;  // 表示開始行
        int lines_to_show = std::min(LINES - 2, static_cast<int>(buffer.size()) - start_line); // 表示可能な行数
        for (int i = 0; i < lines_to_show; ++i) {
            mvaddwstr(i, 0, buffer[start_line + i].c_str());
        }

        // ステータスバー
        mvprintw(LINES - 2, 0, "-- %s --",
            mode == NORMAL ? "NORMAL" :
            mode == INSERT ? "INSERT" : "COMMAND");

        if (mode == COMMAND) {
            mvprintw(LINES - 1, 0, ":");
            addwstr(command.c_str());
            move(LINES - 1, 1 + command_cx);
        } else {
            mvprintw(LINES - 1, 0, "%ls", message.c_str());
            move(y - start_line, x);  // スクロールを反映
        }

        refresh();
        get_wch(&ch);

        if (mode == NORMAL) {
            message.clear();
            if (ch == L'i') mode = INSERT;
            else if (ch == L':') {
                mode = COMMAND;
                command.clear();
                command_cx = 0;
            }
            else if (ch == L'h' && x > 0) x--;
            else if (ch == L'l' && x < buffer[y].size()) x++;
            else if (ch == L'j' && y + 1 < buffer.size()) y++;
            else if (ch == L'k' && y > 0) y--;
            else if (ch == KEY_UP && start_line > 0) start_line--; // 上にスクロール
            else if (ch == KEY_DOWN && start_line + LINES - 2 < buffer.size()) start_line++; // 下にスクロール
        }

        else if (mode == INSERT) {
            if (ch == 27) mode = NORMAL; // ESC
            else if (ch == KEY_BACKSPACE || ch == 127) {
                if (x > 0) {
                    buffer[y].erase(x - 1, 1);
                    x--;
                } else if (y > 0) {
                    x = buffer[y - 1].size();
                    buffer[y - 1] += buffer[y];
                    buffer.erase(buffer.begin() + y);
                    y--;
                }
            } else if (ch == KEY_DC) {
                if (x < buffer[y].size()) {
                    buffer[y].erase(x, 1);
                } else if (y + 1 < buffer.size()) {
                    buffer[y] += buffer[y + 1];
                    buffer.erase(buffer.begin() + y + 1);
                }
            } else if (ch == L'\n') {
                std::wstring newLine = buffer[y].substr(x);
                buffer[y] = buffer[y].substr(0, x);
                buffer.insert(buffer.begin() + y + 1, newLine);
                y++;
                x = 0;
            } else {
                buffer[y].insert(buffer[y].begin() + x, ch);
                x++;
            }
        }

        else if (mode == COMMAND) {
            if (ch == 10) { // Enter
                std::string cmd(command.begin(), command.end());

                if (cmd == "q") break;
                else if (cmd == "w") {
                    std::wofstream ofs(filename);
                    for (auto& line : buffer)
                        ofs << line << std::endl;
                    ofs.close();
                    message = L"Wrote to file.";
                } else if (cmd == "wq") {
                    std::wofstream ofs(filename);
                    for (auto& line : buffer)
                        ofs << line << std::endl;
                    ofs.close();
                    break;
                }
                // :e file.txt の追加
                else if (cmd.rfind("e ", 0) == 0) { // starts with "e "
                    std::string newfile = cmd.substr(2); // 2文字目以降（ファイル名）
                    std::wifstream ifs(newfile);
                    if (ifs) {
                        buffer.clear();
                        std::wstring line;
                        while (std::getline(ifs, line)) {
                            buffer.push_back(line);
                        }
                        ifs.close();
                        filename = newfile;
                        x = y = 0;
                        message = L"Opened file: " + std::wstring(newfile.begin(), newfile.end());
                    } else {
                        message = L"Failed to open file: " + std::wstring(newfile.begin(), newfile.end());
                    }
                } else {
                    message = L"Unknown command: " + command;
                }

                mode = NORMAL;
                command.clear();
                command_cx = 0;
            }

            else if (ch == 27) { // ESC
                mode = NORMAL;
                command.clear();
                command_cx = 0;
            }

            else if (ch == KEY_BACKSPACE || ch == 127) {
                if (command_cx > 0) {
                    command.erase(command_cx - 1, 1);
                    command_cx--;
                }
            }

            else if (ch == KEY_DC) {
                if (command_cx < command.size()) {
                    command.erase(command_cx, 1);
                }
            }

            else if (ch == KEY_LEFT) {
                if (command_cx > 0) command_cx--;
            }

            else if (ch == KEY_RIGHT) {
                if (command_cx < command.size()) command_cx++;
            }

            else {
                command.insert(command.begin() + command_cx, ch);
                command_cx++;
            }
        }
    }

    endwin();
    return 0;
}

