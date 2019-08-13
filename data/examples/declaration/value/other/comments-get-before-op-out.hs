main :: IO ()
main = do
  migrateSchema
    [ migration1,
      migration1,
      migration3
      ]
    `finally` -- When adding migrations here, don't forget to update
    -- 'schemaVersion' in Galley.Data
    Log.close
