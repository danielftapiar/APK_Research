.class final Lcl/birdie/transantiagomaster/TransantiagoMasterApplication$1;
.super Landroid/content/BroadcastReceiver;
.source "TransantiagoMasterApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication$1;->this$0:Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;

    .line 203
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcl/birdie/transantiagomaster/TransantiagoMasterApplication$1;)Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication$1;->this$0:Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;

    return-object v0
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 26
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 206
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 207
    .local v4, "action":Ljava/lang/String;
    const-string v22, "android.intent.action.DOWNLOAD_COMPLETE"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 208
    const-string v22, "extra_download_id"

    const-wide/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move-wide/from16 v2, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 209
    .local v10, "dwnId":J
    const-string v22, "TransantiagoMasterApplication"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "download id de la descarga: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication$1;->this$0:Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;

    move-object/from16 v22, v0

    const-string v23, "download"

    invoke-virtual/range {v22 .. v23}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/DownloadManager;

    .line 211
    .local v9, "dm":Landroid/app/DownloadManager;
    if-eqz v9, :cond_1

    .line 212
    const/16 v20, 0x0

    .line 214
    .local v20, "uri":Landroid/net/Uri;
    const/16 v17, 0x0

    .line 217
    .local v17, "remoteUri":Ljava/lang/String;
    new-instance v15, Landroid/app/DownloadManager$Query;

    invoke-direct {v15}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 218
    .local v15, "q":Landroid/app/DownloadManager$Query;
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [J

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-wide v10, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 219
    invoke-virtual {v9, v15}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v6

    .line 220
    .local v6, "c":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v22

    if-eqz v22, :cond_5

    .line 221
    const-string v22, "uri"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 222
    .local v7, "columnIndex":I
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v7, v0, :cond_3

    .line 223
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 224
    new-instance v23, Ljava/lang/StringBuilder;

    const-string v22, "remoteUri: "

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v17, :cond_2

    move-object/from16 v22, v17

    :goto_0
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    :goto_1
    const-string v22, "status"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 230
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 231
    .local v18, "status":I
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "ACTION_DOWNLOAD_COMPLETE: status: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    const/16 v22, 0x8

    move/from16 v0, v22

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 235
    const-string v22, "local_uri"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 234
    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 236
    .local v21, "uriString":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "ACTION_DOWNLOAD_COMPLETE: uriString "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    .line 250
    .end local v21    # "uriString":Ljava/lang/String;
    :goto_2
    sget v22, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v23, 0xb

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    .line 251
    invoke-virtual {v9, v10, v11}, Landroid/app/DownloadManager;->getUriForDownloadedFile(J)Landroid/net/Uri;

    move-result-object v20

    .line 258
    :cond_0
    if-nez v20, :cond_7

    .line 259
    const-string v23, "TransantiagoMasterApplication"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v22, "uri invalida: "

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v20, :cond_6

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v22

    :goto_3
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v7    # "columnIndex":I
    .end local v9    # "dm":Landroid/app/DownloadManager;
    .end local v10    # "dwnId":J
    .end local v15    # "q":Landroid/app/DownloadManager$Query;
    .end local v17    # "remoteUri":Ljava/lang/String;
    .end local v18    # "status":I
    .end local v20    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_4
    return-void

    .line 224
    .restart local v6    # "c":Landroid/database/Cursor;
    .restart local v7    # "columnIndex":I
    .restart local v9    # "dm":Landroid/app/DownloadManager;
    .restart local v10    # "dwnId":J
    .restart local v15    # "q":Landroid/app/DownloadManager$Query;
    .restart local v17    # "remoteUri":Ljava/lang/String;
    .restart local v20    # "uri":Landroid/net/Uri;
    :cond_2
    const-string v22, "NULL"

    goto/16 :goto_0

    .line 226
    :cond_3
    const-string v22, "TransantiagoMasterApplication"

    const-string v23, "error obteniendo columna de remoteUri"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 239
    .restart local v18    # "status":I
    :cond_4
    const-string v22, "TransantiagoMasterApplication"

    const-string v23, "ACTION_DOWNLOAD_COMPLETE: unsuccessful"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const-string v22, "reason"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 241
    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 243
    .local v16, "reason":Ljava/lang/String;
    const-string v22, "TransantiagoMasterApplication"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "ACTION_DOWNLOAD_COMPLETE: reason: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 246
    .end local v7    # "columnIndex":I
    .end local v16    # "reason":Ljava/lang/String;
    .end local v18    # "status":I
    :cond_5
    const-string v22, "TransantiagoMasterApplication"

    const-string v23, "error: no se pudo obtener informaci\u00f3n de la descarga!"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 259
    .restart local v7    # "columnIndex":I
    .restart local v18    # "status":I
    :cond_6
    const-string v22, "null!"

    goto :goto_3

    .line 263
    :cond_7
    const/16 v19, 0x0

    .line 264
    .local v19, "tempf":Ljava/io/File;
    const/4 v13, 0x0

    .line 266
    .local v13, "istrm":Ljava/io/InputStream;
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "descomprimiendo archivo "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication$1;->this$0:Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v13

    .line 270
    const-string v22, "tmp"

    const-string v23, ".tmp"

    new-instance v24, Ljava/io/File;

    sget-object v25, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->TMCacheDir:Ljava/lang/String;

    invoke-direct/range {v24 .. v25}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v22 .. v24}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v19

    .line 271
    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v22, Ljava/io/FileOutputStream;

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v22

    invoke-direct {v5, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 272
    .local v5, "bos":Ljava/io/OutputStream;
    const/4 v14, 0x0

    .line 273
    .local v14, "largo":I
    const/16 v22, 0x400

    move/from16 v0, v22

    new-array v8, v0, [B

    .line 275
    .local v8, "data":[B
    :goto_5
    const/16 v22, 0x0

    const/16 v23, 0x400

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v13, v8, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v14

    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v14, v0, :cond_9

    .line 278
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    if-eqz v13, :cond_8

    .line 286
    :try_start_1
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 293
    :cond_8
    :goto_6
    if-nez v19, :cond_b

    .line 297
    const-string v22, "TransantiagoMasterApplication"

    const-string v23, "tempf es NULL!"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 276
    :cond_9
    const/16 v22, 0x0

    :try_start_2
    move/from16 v0, v22

    invoke-virtual {v5, v8, v0, v14}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .line 279
    .end local v5    # "bos":Ljava/io/OutputStream;
    .end local v8    # "data":[B
    .end local v14    # "largo":I
    :catch_0
    move-exception v12

    .line 280
    .local v12, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v22, "TransantiagoMasterApplication"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "error al procesar archivo: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 284
    if-eqz v13, :cond_1

    .line 286
    :try_start_4
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_4

    :catch_1
    move-exception v22

    goto/16 :goto_4

    .line 283
    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v22

    .line 284
    if-eqz v13, :cond_a

    .line 286
    :try_start_5
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 291
    :cond_a
    :goto_7
    throw v22

    .line 301
    .restart local v5    # "bos":Ljava/io/OutputStream;
    .restart local v8    # "data":[B
    .restart local v14    # "largo":I
    :cond_b
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "procesando descarga "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 303
    const-string v22, "http://api.transantiagomaster.cl/db/transantiagomaster.db.gz"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication$1;->this$0:Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    const v23, 0x7f06016b

    const/16 v24, 0x1

    invoke-static/range {v22 .. v24}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Toast;->show()V

    .line 307
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    new-instance v23, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication$1$1;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10, v11}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication$1$1;-><init>(Lcl/birdie/transantiagomaster/TransantiagoMasterApplication$1;J)V

    invoke-static/range {v22 .. v23}, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->procesaDescarga(Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    goto/16 :goto_4

    .line 332
    :cond_c
    const-string v22, "http://api.transantiagomaster.cl/db/santiago.map.gz"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication$1;->this$0:Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    const v23, 0x7f06016b

    const/16 v24, 0x1

    invoke-static/range {v22 .. v24}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Toast;->show()V

    .line 336
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    new-instance v23, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication$1$2;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10, v11}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication$1$2;-><init>(Lcl/birdie/transantiagomaster/TransantiagoMasterApplication$1;J)V

    invoke-static/range {v22 .. v23}, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->procesaMapa(Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    goto/16 :goto_4

    .line 362
    :cond_d
    const-string v22, "TransantiagoMasterApplication"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "URI no reconocida: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .end local v5    # "bos":Ljava/io/OutputStream;
    .end local v8    # "data":[B
    .end local v14    # "largo":I
    :catch_2
    move-exception v23

    goto/16 :goto_7

    .restart local v5    # "bos":Ljava/io/OutputStream;
    .restart local v8    # "data":[B
    .restart local v14    # "largo":I
    :catch_3
    move-exception v22

    goto/16 :goto_6
.end method
