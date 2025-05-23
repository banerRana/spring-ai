CREATE TABLE SPRING_AI_CHAT_MEMORY (
    conversation_id VARCHAR(36) NOT NULL,
    content NVARCHAR(MAX) NOT NULL,
    type VARCHAR(10) NOT NULL,
    [timestamp] DATETIME2 NOT NULL DEFAULT SYSDATETIME(),
    CONSTRAINT TYPE_CHECK CHECK (type IN ('USER', 'ASSISTANT', 'SYSTEM', 'TOOL'))
);

CREATE INDEX SPRING_AI_CHAT_MEMORY_CONVERSATION_ID_TIMESTAMP_IDX ON SPRING_AI_CHAT_MEMORY(conversation_id, [timestamp] DESC);
