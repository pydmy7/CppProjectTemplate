#include "config.h"

#include <spdlog/spdlog.h>
#include <spdlog/sinks/basic_file_sink.h>
 
void initLog() {
    const auto file_logger {
        spdlog::basic_logger_mt(
            "master",
            (BINARY_DIR / (std::string(PROJECT_NAME) + ".log")).string()
        )
    };
    spdlog::set_default_logger(file_logger);
}

int main() {

    initLog();

    spdlog::info("info");
    spdlog::warn("warn");
    spdlog::error("error");

    return 0;
}
