import logging

liams_logger = logging.getLogger("liams_logger")
file_handler = logging.FileHandler("./example.log")
formatter = logging.Formatter('%(asctime)s [%(levelname)s] - %(message)s')
file_handler.setFormatter(formatter)
liams_logger.addHandler(file_handler)


liams_logger.critical("error?")
