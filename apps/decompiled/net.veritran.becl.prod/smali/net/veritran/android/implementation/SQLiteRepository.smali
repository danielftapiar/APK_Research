.class final Lnet/veritran/android/implementation/SQLiteRepository;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SQLiteRepository.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "vtuapp.db"

.field private static final TAG:Ljava/lang/String; = "SQLiteRepository"


# instance fields
.field private version:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "versionNumber"    # I

    .prologue
    .line 25
    const-string v0, "vtuapp.db"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 26
    iput p2, p0, Lnet/veritran/android/implementation/SQLiteRepository;->version:I

    .line 27
    return-void
.end method

.method public static getDataBaseName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-string v0, "vtuapp.db"

    return-object v0
.end method


# virtual methods
.method protected checkIfTableExist(Ljava/lang/String;)Z
    .locals 6
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 54
    const/4 v3, 0x0

    .line 56
    .local v3, "tableExist":Z
    const/4 v1, 0x0

    .line 58
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 61
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lnet/veritran/android/implementation/SQLiteRepository;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 63
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT DISTINCT tbl_name FROM sqlite_master WHERE tbl_name = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_0

    .line 67
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-lez v4, :cond_0

    .line 68
    const/4 v3, 0x1

    .line 77
    :cond_0
    if-eqz v1, :cond_1

    .line 78
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 81
    :cond_1
    if-eqz v0, :cond_2

    .line 82
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 86
    :cond_2
    :goto_0
    return v3

    .line 72
    :catch_0
    move-exception v2

    .line 73
    .local v2, "ex":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v4, "SQLiteRepository"

    const-string v5, "Catched exception empty (fortify)"

    invoke-static {v4, v5}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    if-eqz v1, :cond_3

    .line 78
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 81
    :cond_3
    if-eqz v0, :cond_2

    .line 82
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 74
    .end local v2    # "ex":Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v2

    .line 75
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "SQLiteRepository"

    const-string v5, "Catched exception empty (fortify)"

    invoke-static {v4, v5}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    if-eqz v1, :cond_4

    .line 78
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 81
    :cond_4
    if-eqz v0, :cond_2

    .line 82
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 77
    .end local v2    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_5

    .line 78
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 81
    :cond_5
    if-eqz v0, :cond_6

    .line 82
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v4
.end method

.method protected getSqlTypeByDataFieldType(I)Ljava/lang/String;
    .locals 1
    .param p1, "dataFieldType"    # I

    .prologue
    .line 96
    packed-switch p1, :pswitch_data_0

    .line 106
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 99
    :pswitch_0
    const-string v0, "INTEGER"

    goto :goto_0

    .line 101
    :pswitch_1
    const-string v0, "BLOB"

    goto :goto_0

    .line 103
    :pswitch_2
    const-string v0, "TEXT"

    goto :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 33
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 38
    return-void
.end method
