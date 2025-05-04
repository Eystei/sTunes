from enum import Enum


class Query(str, Enum):
    QUERY_GET_ALL_TABLES = """
    SELECT name 
    FROM sqlite_master 
    WHERE type='table';
    """

    QUERY_GET_COLUMNS_FOR_TABLE = """
    PRAGMA table_info({table_name})
    """

    def __str__(self):
        return self.value
