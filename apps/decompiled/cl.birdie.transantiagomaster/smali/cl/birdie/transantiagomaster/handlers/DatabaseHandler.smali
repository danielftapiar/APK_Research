.class public final Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;
.super Ljava/lang/Object;
.source "DatabaseHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/birdie/transantiagomaster/handlers/DatabaseHandler$DescargadorBaseDatos;,
        Lcl/birdie/transantiagomaster/handlers/DatabaseHandler$DescargadorMapa;,
        Lcl/birdie/transantiagomaster/handlers/DatabaseHandler$ResultObjetos;
    }
.end annotation


# static fields
.field private static baseDir:Ljava/lang/String;

.field private static dbPath:Ljava/lang/String;

.field public static mapaPath:Ljava/lang/String;


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    sput-object v0, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->dbPath:Ljava/lang/String;

    .line 52
    sput-object v0, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->mapaPath:Ljava/lang/String;

    .line 54
    sput-object v0, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->baseDir:Ljava/lang/String;

    .line 515
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private abrirBaseDatos()Z
    .locals 9

    .prologue
    const/4 v3, 0x0

    const-wide/16 v7, 0x0

    .line 112
    const/4 v2, 0x0

    .line 115
    .local v2, "ndb":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    sget-object v4, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->dbPath:Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v6, 0x11

    invoke-static {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 116
    const-string v4, "DatabaseHandler"

    const-string v5, "abrirBaseDatos: exito al abrir bd!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 117
    const/4 v1, 0x0

    .line 119
    .local v1, "error":Z
    :try_start_1
    const-string v4, "paraderos"

    invoke-static {v2, v4}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v4, v4, v7

    if-eqz v4, :cond_0

    .line 120
    const-string v4, "bip"

    invoke-static {v2, v4}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v4, v4, v7

    if-eqz v4, :cond_0

    .line 121
    const-string v4, "metro_estacion"

    invoke-static {v2, v4}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v4

    cmp-long v4, v4, v7

    if-nez v4, :cond_1

    .line 122
    :cond_0
    const/4 v1, 0x1

    .line 128
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 129
    :try_start_2
    const-string v4, "DatabaseHandler"

    const-string v5, "cerrando por error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 145
    .end local v1    # "error":Z
    :goto_1
    return v3

    .line 123
    .restart local v1    # "error":Z
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "DatabaseHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "exception al contar filas: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v1, 0x1

    goto :goto_0

    .line 134
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v4, p0, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v4, :cond_3

    .line 135
    const-string v4, "DatabaseHandler"

    const-string v5, "abrirBaseDatos: cerrando bd antigua"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v4, p0, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 139
    :cond_3
    iput-object v2, p0, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 145
    const/4 v3, 0x1

    goto :goto_1

    .line 140
    .end local v1    # "error":Z
    :catch_1
    move-exception v0

    .line 141
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v4, "DatabaseHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "abrirBaseDatos: error al abrir base de datos: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static descargarArchivoDM$c250f7f(Landroid/app/DownloadManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "dm"    # Landroid/app/DownloadManager;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "tmpfname"    # Ljava/lang/String;
    .param p3, "descripcion"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 241
    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 242
    .local v1, "f":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "tratando de borrar archivo "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 244
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_0

    .line 245
    const-string v3, "DatabaseHandler"

    const-string v4, "error borrando archivo"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    .end local v1    # "f":Ljava/io/File;
    :cond_0
    :goto_0
    new-instance v2, Landroid/app/DownloadManager$Request;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 255
    .local v2, "req":Landroid/app/DownloadManager$Request;
    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v2, v3, p2}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 256
    invoke-virtual {v2, p3}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 257
    invoke-virtual {p0, v2}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    .line 258
    return-void

    .line 250
    .end local v2    # "req":Landroid/app/DownloadManager$Request;
    .restart local v1    # "f":Ljava/io/File;
    :cond_1
    :try_start_1
    const-string v3, "DatabaseHandler"

    const-string v4, "archivo no existe"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 251
    .end local v1    # "f":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "DatabaseHandler"

    const-string v4, "error borrando archivo temporal"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static descargarBaseDatos(Landroid/app/Activity;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 5
    .param p0, "act"    # Landroid/app/Activity;
    .param p1, "listener"    # Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .prologue
    .line 261
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-ge v1, v2, :cond_1

    .line 262
    new-instance v1, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler$DescargadorBaseDatos;

    invoke-direct {v1, p1}, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler$DescargadorBaseDatos;-><init>(Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "http://api.transantiagomaster.cl/db/transantiagomaster.db.gz"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler$DescargadorBaseDatos;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    const-string v1, "download"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 266
    .local v0, "dm":Landroid/app/DownloadManager;
    if-eqz v0, :cond_0

    .line 267
    const-string v1, "http://api.transantiagomaster.cl/db/transantiagomaster.db.gz"

    const-string v2, "transantiagomaster.db.gz.tmp"

    const v3, 0x7f06016a

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->descargarArchivoDM$c250f7f(Landroid/app/DownloadManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static descargarMapa(Landroid/app/Activity;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 5
    .param p0, "act"    # Landroid/app/Activity;
    .param p1, "listener"    # Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .prologue
    .line 273
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-ge v1, v2, :cond_0

    .line 275
    new-instance v1, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler$DescargadorMapa;

    invoke-direct {v1, p1}, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler$DescargadorMapa;-><init>(Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "http://api.transantiagomaster.cl/db/santiago.map.gz"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler$DescargadorMapa;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 285
    :goto_0
    return-void

    .line 278
    :cond_0
    const-string v1, "download"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 279
    .local v0, "dm":Landroid/app/DownloadManager;
    if-eqz v0, :cond_1

    .line 280
    const-string v1, "http://api.transantiagomaster.cl/db/santiago.map.gz"

    const-string v2, "santiago.map.tmp"

    const v3, 0x7f06016c

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->descargarArchivoDM$c250f7f(Landroid/app/DownloadManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 282
    :cond_1
    const-string v1, "DatabaseHandler"

    const-string v2, "no pudimos obtener DownloadManager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static inicializar$faab20d()V
    .locals 5

    .prologue
    .line 59
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->TMCacheDir:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    const-string v3, "/db/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->baseDir:Ljava/lang/String;

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "usando baseDir "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->baseDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->baseDir:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 66
    const-string v2, "DatabaseHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "creando directorio "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->baseDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 69
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->baseDir:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "transantiagomaster.db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->dbPath:Ljava/lang/String;

    .line 70
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->dbPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->db:Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;

    invoke-direct {v2}, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->abrirBaseDatos()Z

    move-result v2

    if-nez v2, :cond_1

    .line 73
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    const/4 v3, 0x0

    iput-object v3, v2, Lcl/birdie/params/Preferencias;->fecha_bd:Ljava/util/Date;

    .line 75
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->baseDir:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "santiago.map"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->mapaPath:Ljava/lang/String;

    .line 79
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->mapaPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 80
    sget-object v2, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->mapaPath:Ljava/lang/String;

    invoke-static {v2}, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsForgeMapTester;->verificarMapa(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 82
    const-string v2, "DatabaseHandler"

    const-string v3, "mapa OK!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :goto_0
    return-void

    .line 84
    :cond_2
    const-string v2, "DatabaseHandler"

    const-string v3, "error al abrir mapa, borrando archivo"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    const/4 v3, 0x0

    iput-object v3, v2, Lcl/birdie/params/Preferencias;->fecha_mapa:Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :try_start_1
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->mapaPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 91
    :goto_1
    const/4 v2, 0x0

    :try_start_2
    sput-object v2, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->mapaPath:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DatabaseHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "excepcion inicializar: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 89
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    :try_start_3
    const-string v2, "DatabaseHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error al borrar mapa "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->mapaPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 94
    :cond_3
    const-string v2, "DatabaseHandler"

    const-string v3, "mapa no existe"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    const/4 v3, 0x0

    iput-object v3, v2, Lcl/birdie/params/Preferencias;->fecha_mapa:Ljava/util/Date;

    .line 96
    const/4 v2, 0x0

    sput-object v2, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->mapaPath:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

.method public static procesaDescarga(Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 3
    .param p0, "fname"    # Ljava/lang/String;
    .param p1, "listener"    # Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .prologue
    const/4 v2, 0x0

    .line 203
    invoke-static {p0}, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->procesarBaseDatos(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 205
    if-eqz p1, :cond_0

    .line 206
    invoke-interface {p1, v2}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onSuccess(Ljava/lang/Object;)V

    .line 214
    :cond_0
    :goto_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_1
    return-void

    .line 209
    :cond_1
    const-string v0, "DatabaseHandler"

    const-string v1, "procesaDescarga: error en proceso"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    if-eqz p1, :cond_0

    .line 211
    invoke-interface {p1, v2}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V

    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    const-string v0, "DatabaseHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "procesaDescarga: excepcion al borrar archivo "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static procesaMapa(Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 3
    .param p0, "fname"    # Ljava/lang/String;
    .param p1, "listener"    # Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .prologue
    const/4 v2, 0x0

    .line 221
    invoke-static {p0}, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->procesarMapa(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 223
    if-eqz p1, :cond_0

    .line 224
    invoke-interface {p1, v2}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onSuccess(Ljava/lang/Object;)V

    .line 232
    :cond_0
    :goto_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :goto_1
    return-void

    .line 227
    :cond_1
    const-string v0, "DatabaseHandler"

    const-string v1, "procesaMapa: error en proceso"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    if-eqz p1, :cond_0

    .line 229
    invoke-interface {p1, v2}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V

    goto :goto_0

    .line 234
    :catch_0
    move-exception v0

    const-string v0, "DatabaseHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "procesaMapa: excepcion al borrar archivo "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static procesarBaseDatos(Ljava/lang/String;)I
    .locals 10
    .param p0, "fname"    # Ljava/lang/String;

    .prologue
    const v9, 0x8000

    const/4 v6, 0x0

    .line 403
    if-nez p0, :cond_0

    .line 404
    const-string v7, "DatabaseHandler"

    const-string v8, "procesarBaseDatos: null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :goto_0
    return v6

    .line 408
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "procesarBaseDatos: leyendo archivo "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 410
    new-array v2, v9, [B

    .line 415
    .local v2, "buf":[B
    :try_start_0
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v7}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    .local v0, "bis":Ljava/util/zip/GZIPInputStream;
    :try_start_1
    new-instance v4, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->baseDir:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "transantiagomaster.db.tmp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 425
    .local v4, "f":Ljava/io/File;
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v8, 0x4000

    invoke-direct {v1, v7, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 427
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    :goto_1
    const/4 v7, 0x0

    const v8, 0x8000

    invoke-virtual {v0, v2, v7, v8}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v5

    .local v5, "len":I
    if-gtz v5, :cond_3

    .line 431
    invoke-virtual {v0}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 432
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 433
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->baseDir:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "transantiagomaster.db"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 435
    const-string v7, "DatabaseHandler"

    const-string v8, "error al renombrar!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_1
    const-string v7, "DatabaseHandler"

    const-string v8, "actualizando version de base de datos"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    sget-object v7, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->db:Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;

    invoke-direct {v7}, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->abrirBaseDatos()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 439
    sget-object v8, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    monitor-enter v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 440
    :try_start_2
    sget-object v7, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    sget-object v9, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-object v9, v9, Lcl/birdie/params/Preferencias;->fecha_bd_net:Ljava/util/Date;

    iput-object v9, v7, Lcl/birdie/params/Preferencias;->fecha_bd:Ljava/util/Date;

    .line 441
    invoke-static {}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->persistirPreferencias()V

    .line 439
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 450
    :cond_2
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 417
    .end local v0    # "bis":Ljava/util/zip/GZIPInputStream;
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .end local v4    # "f":Ljava/io/File;
    .end local v5    # "len":I
    :catch_0
    move-exception v7

    const-string v7, "DatabaseHandler"

    const-string v8, "procesarBaseDatos: procesar: IOException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 428
    .restart local v0    # "bis":Ljava/util/zip/GZIPInputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "f":Ljava/io/File;
    .restart local v5    # "len":I
    :cond_3
    const/4 v7, 0x0

    :try_start_3
    invoke-virtual {v1, v2, v7, v5}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 444
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .end local v4    # "f":Ljava/io/File;
    .end local v5    # "len":I
    :catch_1
    move-exception v3

    .line 445
    .local v3, "e":Ljava/lang/Exception;
    const-string v7, "DatabaseHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "procesarBaseDatos: traspaso: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 439
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "f":Ljava/io/File;
    .restart local v5    # "len":I
    :catchall_0
    move-exception v7

    :try_start_4
    monitor-exit v8

    throw v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
.end method

.method private static procesarMapa(Ljava/lang/String;)I
    .locals 10
    .param p0, "fname"    # Ljava/lang/String;

    .prologue
    const v9, 0x8000

    const/4 v6, 0x0

    .line 454
    if-nez p0, :cond_0

    .line 455
    const-string v7, "DatabaseHandler"

    const-string v8, "procesarMapa: null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :goto_0
    return v6

    .line 459
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "procesarMapa: procesando archivo "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 461
    new-array v2, v9, [B

    .line 466
    .local v2, "buf":[B
    :try_start_0
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v7}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 475
    .local v0, "bis":Ljava/util/zip/GZIPInputStream;
    :try_start_1
    new-instance v4, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->baseDir:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "santiago.map.tmp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 476
    .local v4, "f":Ljava/io/File;
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v8, 0x4000

    invoke-direct {v1, v7, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 478
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    :goto_1
    const/4 v7, 0x0

    const v8, 0x8000

    invoke-virtual {v0, v2, v7, v8}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v5

    .local v5, "len":I
    if-gtz v5, :cond_1

    .line 481
    invoke-virtual {v0}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 482
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 483
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->baseDir:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "santiago.map"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->mapaPath:Ljava/lang/String;

    .line 485
    new-instance v7, Ljava/io/File;

    sget-object v8, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->mapaPath:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 486
    const-string v7, "DatabaseHandler"

    const-string v8, "error al renombrar!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    const/4 v7, 0x0

    sput-object v7, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->mapaPath:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 500
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .end local v4    # "f":Ljava/io/File;
    .end local v5    # "len":I
    :catch_0
    move-exception v3

    .line 501
    .local v3, "e":Ljava/lang/Exception;
    const-string v7, "DatabaseHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "procesarMapa: traspaso: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 468
    .end local v0    # "bis":Ljava/util/zip/GZIPInputStream;
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    const-string v7, "DatabaseHandler"

    const-string v8, "procesarMapa: procesar: IOException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 479
    .restart local v0    # "bis":Ljava/util/zip/GZIPInputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "f":Ljava/io/File;
    .restart local v5    # "len":I
    :cond_1
    const/4 v7, 0x0

    :try_start_2
    invoke-virtual {v1, v2, v7, v5}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_1

    .line 490
    :cond_2
    sget-object v7, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->mapaPath:Ljava/lang/String;

    invoke-static {v7}, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsForgeMapTester;->verificarMapa(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 491
    const-string v7, "DatabaseHandler"

    const-string v8, "error en verificaci\u00f3n!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const/4 v7, 0x0

    sput-object v7, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->mapaPath:Ljava/lang/String;

    goto/16 :goto_0

    .line 495
    :cond_3
    const-string v7, "DatabaseHandler"

    const-string v8, "actualizando version de mapa"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    sget-object v8, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    monitor-enter v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 497
    :try_start_3
    sget-object v7, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    sget-object v9, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-object v9, v9, Lcl/birdie/params/Preferencias;->fecha_mapa_net:Ljava/util/Date;

    iput-object v9, v7, Lcl/birdie/params/Preferencias;->fecha_mapa:Ljava/util/Date;

    .line 498
    invoke-static {}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->persistirPreferencias()V

    .line 496
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 506
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 496
    :catchall_0
    move-exception v7

    :try_start_4
    monitor-exit v8

    throw v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method public static revisarBaseDatos(Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 6
    .param p0, "caller"    # Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .prologue
    .line 288
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 290
    .local v0, "hoy":Ljava/util/Date;
    const/4 v1, 0x0

    .line 291
    .local v1, "revisar":Z
    sget-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    monitor-enter v3

    .line 292
    :try_start_0
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-object v2, v2, Lcl/birdie/params/Preferencias;->fecha_bd_check:Ljava/util/Date;

    if-eqz v2, :cond_0

    .line 293
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-object v2, v2, Lcl/birdie/params/Preferencias;->fecha_bd_check:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getYear()I

    move-result v2

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v4

    if-ne v2, v4, :cond_0

    .line 294
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-object v2, v2, Lcl/birdie/params/Preferencias;->fecha_bd_check:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getMonth()I

    move-result v2

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v4

    if-ne v2, v4, :cond_0

    .line 295
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-object v2, v2, Lcl/birdie/params/Preferencias;->fecha_bd_check:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getDay()I

    move-result v2

    invoke-virtual {v0}, Ljava/util/Date;->getDay()I

    move-result v4

    if-eq v2, v4, :cond_1

    .line 296
    :cond_0
    const/4 v1, 0x1

    .line 291
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    if-nez v1, :cond_3

    .line 301
    if-eqz p0, :cond_2

    .line 303
    const/4 v2, 0x0

    invoke-interface {p0, v2}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V

    .line 344
    :cond_2
    :goto_0
    return-void

    .line 291
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 307
    :cond_3
    new-instance v2, Lcl/birdie/toolkit/DescargarArchivo$DescargadorCallback;

    new-instance v3, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler$1;

    invoke-direct {v3, p0}, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler$1;-><init>(Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    invoke-direct {v2, v3}, Lcl/birdie/toolkit/DescargarArchivo$DescargadorCallback;-><init>(Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 343
    const-string v5, "http://api.transantiagomaster.cl/db/transantiagomaster.db.date"

    aput-object v5, v3, v4

    .line 308
    invoke-static {v2, v3}, Lcl/birdie/toolkit/Util;->executeAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static revisarMapa(Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 6
    .param p0, "caller"    # Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .prologue
    .line 347
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 348
    .local v0, "hoy":Ljava/util/Date;
    const/4 v1, 0x0

    .line 349
    .local v1, "revisar":Z
    sget-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    monitor-enter v3

    .line 350
    :try_start_0
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-object v2, v2, Lcl/birdie/params/Preferencias;->fecha_mapa_check:Ljava/util/Date;

    if-eqz v2, :cond_0

    .line 351
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-object v2, v2, Lcl/birdie/params/Preferencias;->fecha_mapa_check:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getYear()I

    move-result v2

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v4

    if-ne v2, v4, :cond_0

    .line 352
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-object v2, v2, Lcl/birdie/params/Preferencias;->fecha_mapa_check:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getMonth()I

    move-result v2

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v4

    if-ne v2, v4, :cond_0

    .line 353
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-object v2, v2, Lcl/birdie/params/Preferencias;->fecha_mapa_check:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getDay()I

    move-result v2

    invoke-virtual {v0}, Ljava/util/Date;->getDay()I

    move-result v4

    if-eq v2, v4, :cond_1

    .line 354
    :cond_0
    const/4 v1, 0x1

    .line 349
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    if-nez v1, :cond_3

    .line 359
    if-eqz p0, :cond_2

    .line 360
    const/4 v2, 0x0

    invoke-interface {p0, v2}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V

    .line 400
    :cond_2
    :goto_0
    return-void

    .line 349
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 364
    :cond_3
    new-instance v2, Lcl/birdie/toolkit/DescargarArchivo$DescargadorCallback;

    new-instance v3, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler$2;

    invoke-direct {v3, p0}, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler$2;-><init>(Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    invoke-direct {v2, v3}, Lcl/birdie/toolkit/DescargarArchivo$DescargadorCallback;-><init>(Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 399
    const-string v5, "http://api.transantiagomaster.cl/db/santiago.map.date"

    aput-object v5, v3, v4

    .line 364
    invoke-static {v2, v3}, Lcl/birdie/toolkit/Util;->executeAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final getObjetosBbox(DDDD)Lcl/birdie/transantiagomaster/handlers/DatabaseHandler$ResultObjetos;
    .locals 31
    .param p1, "lat1"    # D
    .param p3, "lng1"    # D
    .param p5, "lat2"    # D
    .param p7, "lng2"    # D

    .prologue
    .line 518
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 519
    .local v23, "pars":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/birdie/transantiagomaster/newobjetos/Paradero;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 520
    .local v15, "bips":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/birdie/transantiagomaster/newobjetos/Bip;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 526
    .local v21, "metros":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/birdie/transantiagomaster/newobjetos/Metro;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "paraderos"

    const/4 v5, 0x5

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "codparadero"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "textoparadero"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "lat"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "lng"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "idparadero"

    aput-object v6, v4, v5

    .line 527
    const-string v5, "lat >= ? and lat <= ? and lng >= ? and lng <= ?"

    .line 528
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static/range {p5 .. p6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static/range {p7 .. p8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 529
    const/4 v7, 0x0

    .line 530
    const/4 v8, 0x0

    .line 531
    const/4 v9, 0x0

    .line 532
    const-string v10, "100"

    .line 526
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 533
    .local v16, "c":Landroid/database/Cursor;
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 535
    .local v29, "svcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/birdie/transantiagomaster/newobjetos/Servicio;>;"
    :goto_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 567
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 570
    move-object/from16 v0, p0

    iget-object v3, v0, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "bip"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "tipo"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "id"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "cliente"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "direccion"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "lat"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string v7, "lng"

    aput-object v7, v5, v6

    .line 571
    const-string v6, "lat >= ? and lat <= ? and lng >= ? and lng <= ?"

    .line 572
    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static/range {p5 .. p6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static/range {p7 .. p8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 573
    const/4 v8, 0x0

    .line 574
    const/4 v9, 0x0

    .line 575
    const/4 v10, 0x0

    .line 576
    const-string v11, "100"

    .line 570
    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 578
    :goto_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_8

    .line 584
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 586
    move-object/from16 v0, p0

    iget-object v4, v0, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "metro_estacion"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "estacion_id"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "estacion_nombre"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "lat"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "lng"

    aput-object v8, v6, v7

    .line 587
    const-string v7, "lat >= ? and lat <= ? and lng >= ? and lng <= ?"

    .line 588
    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static/range {p5 .. p6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static/range {p7 .. p8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 589
    const/4 v9, 0x0

    .line 590
    const/4 v10, 0x0

    .line 591
    const/4 v11, 0x0

    .line 592
    const-string v12, "100"

    .line 586
    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 593
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 594
    .local v20, "lineas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/birdie/transantiagomaster/newobjetos/MetroLinea;>;"
    :goto_2
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_9

    .line 624
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 631
    new-instance v25, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler$ResultObjetos;

    invoke-direct/range {v25 .. v25}, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler$ResultObjetos;-><init>()V

    .line 633
    .local v25, "ro":Lcl/birdie/transantiagomaster/handlers/DatabaseHandler$ResultObjetos;
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v30

    .local v30, "sz":I
    if-lez v30, :cond_0

    .line 634
    move/from16 v0, v30

    new-array v5, v0, [Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    move-object/from16 v0, v25

    iput-object v5, v0, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler$ResultObjetos;->paraderos:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    .line 635
    :cond_0
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v30

    if-lez v30, :cond_1

    .line 636
    move/from16 v0, v30

    new-array v5, v0, [Lcl/birdie/transantiagomaster/newobjetos/Metro;

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcl/birdie/transantiagomaster/newobjetos/Metro;

    move-object/from16 v0, v25

    iput-object v5, v0, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler$ResultObjetos;->metros:[Lcl/birdie/transantiagomaster/newobjetos/Metro;

    .line 637
    :cond_1
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v30

    if-lez v30, :cond_2

    .line 638
    move/from16 v0, v30

    new-array v5, v0, [Lcl/birdie/transantiagomaster/newobjetos/Bip;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcl/birdie/transantiagomaster/newobjetos/Bip;

    move-object/from16 v0, v25

    iput-object v5, v0, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler$ResultObjetos;->bips:[Lcl/birdie/transantiagomaster/newobjetos/Bip;

    .line 642
    .end local v16    # "c":Landroid/database/Cursor;
    .end local v20    # "lineas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/birdie/transantiagomaster/newobjetos/MetroLinea;>;"
    .end local v25    # "ro":Lcl/birdie/transantiagomaster/handlers/DatabaseHandler$ResultObjetos;
    .end local v29    # "svcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/birdie/transantiagomaster/newobjetos/Servicio;>;"
    .end local v30    # "sz":I
    :cond_2
    :goto_3
    return-object v25

    .line 536
    .restart local v16    # "c":Landroid/database/Cursor;
    .restart local v29    # "svcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/birdie/transantiagomaster/newobjetos/Servicio;>;"
    :cond_3
    :try_start_1
    new-instance v2, Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    const/4 v5, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    const/4 v5, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    const/4 v7, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcl/birdie/transantiagomaster/newobjetos/Paradero;-><init>(DDLjava/lang/String;Ljava/lang/String;)V

    .line 538
    .local v2, "p":Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->clear()V

    .line 540
    move-object/from16 v0, p0

    iget-object v3, v0, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "itinerarios"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "idservicio"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "sentido"

    aput-object v7, v5, v6

    .line 541
    const-string v6, "idparadero = ?"

    .line 542
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x4

    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 543
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 540
    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v28

    .line 544
    .local v28, "svcids":Landroid/database/Cursor;
    :goto_4
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_5

    .line 559
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    .line 561
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 562
    .local v18, "l":I
    if-lez v18, :cond_4

    .line 563
    move/from16 v0, v18

    new-array v5, v0, [Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    iput-object v5, v2, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->servicios:[Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    .line 565
    :cond_4
    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 625
    .end local v2    # "p":Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    .end local v16    # "c":Landroid/database/Cursor;
    .end local v18    # "l":I
    .end local v28    # "svcids":Landroid/database/Cursor;
    .end local v29    # "svcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/birdie/transantiagomaster/newobjetos/Servicio;>;"
    :catch_0
    move-exception v17

    .line 626
    .local v17, "e":Ljava/lang/Exception;
    const-string v5, "DatabaseHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "error en query"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    .line 628
    const/16 v25, 0x0

    goto/16 :goto_3

    .line 545
    .end local v17    # "e":Ljava/lang/Exception;
    .restart local v2    # "p":Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    .restart local v16    # "c":Landroid/database/Cursor;
    .restart local v28    # "svcids":Landroid/database/Cursor;
    .restart local v29    # "svcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/birdie/transantiagomaster/newobjetos/Servicio;>;"
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "servicios"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "servicio"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "desde"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "hasta"

    aput-object v7, v5, v6

    .line 546
    const-string v6, "idservicio = ?"

    .line 547
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v28

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 548
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 545
    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    .line 549
    .local v27, "svc":Landroid/database/Cursor;
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 550
    new-instance v26, Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    invoke-direct/range {v26 .. v26}, Lcl/birdie/transantiagomaster/newobjetos/Servicio;-><init>()V

    .line 551
    .local v26, "s":Lcl/birdie/transantiagomaster/newobjetos/Servicio;
    const/4 v5, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v26

    iput-object v5, v0, Lcl/birdie/transantiagomaster/newobjetos/Servicio;->nombre:Ljava/lang/String;

    .line 552
    const/4 v5, 0x1

    move-object/from16 v0, v27

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v26

    iput-object v5, v0, Lcl/birdie/transantiagomaster/newobjetos/Servicio;->textoIda:Ljava/lang/String;

    .line 553
    const/4 v5, 0x2

    move-object/from16 v0, v27

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v26

    iput-object v5, v0, Lcl/birdie/transantiagomaster/newobjetos/Servicio;->textoRegreso:Ljava/lang/String;

    .line 554
    const/4 v5, 0x1

    move-object/from16 v0, v28

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "I"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x0

    :goto_5
    move-object/from16 v0, v26

    iput v5, v0, Lcl/birdie/transantiagomaster/newobjetos/Servicio;->sentido:I

    .line 555
    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    .end local v26    # "s":Lcl/birdie/transantiagomaster/newobjetos/Servicio;
    :cond_6
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    .line 554
    .restart local v26    # "s":Lcl/birdie/transantiagomaster/newobjetos/Servicio;
    :cond_7
    const/4 v5, 0x1

    goto :goto_5

    .line 579
    .end local v2    # "p":Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    .end local v26    # "s":Lcl/birdie/transantiagomaster/newobjetos/Servicio;
    .end local v27    # "svc":Landroid/database/Cursor;
    .end local v28    # "svcids":Landroid/database/Cursor;
    :cond_8
    new-instance v3, Lcl/birdie/transantiagomaster/newobjetos/Bip;

    const/4 v5, 0x4

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    const/4 v6, 0x5

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    const/4 v8, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v3 .. v9}, Lcl/birdie/transantiagomaster/newobjetos/Bip;-><init>(DDLjava/lang/String;Ljava/lang/String;)V

    .line 580
    .local v3, "b":Lcl/birdie/transantiagomaster/newobjetos/Bip;
    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v3, Lcl/birdie/transantiagomaster/newobjetos/Bip;->tipo:I

    .line 581
    const/4 v5, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v3, Lcl/birdie/transantiagomaster/newobjetos/Bip;->id:I

    .line 582
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 595
    .end local v3    # "b":Lcl/birdie/transantiagomaster/newobjetos/Bip;
    .restart local v20    # "lineas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/birdie/transantiagomaster/newobjetos/MetroLinea;>;"
    :cond_9
    new-instance v4, Lcl/birdie/transantiagomaster/newobjetos/Metro;

    const/4 v5, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    const/4 v7, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v7

    const/4 v9, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    invoke-direct/range {v4 .. v9}, Lcl/birdie/transantiagomaster/newobjetos/Metro;-><init>(DDLjava/lang/String;)V

    .line 596
    .local v4, "m":Lcl/birdie/transantiagomaster/newobjetos/Metro;
    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lcl/birdie/transantiagomaster/newobjetos/Metro;->id:I

    .line 598
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    .line 601
    move-object/from16 v0, p0

    iget-object v5, v0, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x1

    const-string v7, "metro_recorrido"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "linea_id"

    aput-object v10, v8, v9

    .line 602
    const-string v9, "estacion_id = ?"

    .line 603
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 604
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 601
    invoke-virtual/range {v5 .. v14}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .line 605
    .local v24, "recs":Landroid/database/Cursor;
    :goto_6
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_a

    .line 618
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 620
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Lcl/birdie/transantiagomaster/newobjetos/MetroLinea;

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcl/birdie/transantiagomaster/newobjetos/MetroLinea;

    iput-object v5, v4, Lcl/birdie/transantiagomaster/newobjetos/Metro;->lineas:[Lcl/birdie/transantiagomaster/newobjetos/MetroLinea;

    .line 622
    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 606
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "metro_linea"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "linea_nombre"

    aput-object v9, v7, v8

    .line 607
    const-string v8, "linea_id = ?"

    .line 608
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 609
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 606
    invoke-virtual/range {v5 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 610
    .local v19, "linea":Landroid/database/Cursor;
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 611
    new-instance v22, Lcl/birdie/transantiagomaster/newobjetos/MetroLinea;

    invoke-direct/range {v22 .. v22}, Lcl/birdie/transantiagomaster/newobjetos/MetroLinea;-><init>()V

    .line 612
    .local v22, "ml":Lcl/birdie/transantiagomaster/newobjetos/MetroLinea;
    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v22

    iput v5, v0, Lcl/birdie/transantiagomaster/newobjetos/MetroLinea;->linea_id:I

    .line 613
    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    iput-object v5, v0, Lcl/birdie/transantiagomaster/newobjetos/MetroLinea;->linea_nombre:Ljava/lang/String;

    .line 614
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    .end local v22    # "ml":Lcl/birdie/transantiagomaster/newobjetos/MetroLinea;
    :cond_b
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6
.end method

.method public final getServicio(Lcl/birdie/transantiagomaster/newobjetos/Servicio;)Z
    .locals 29
    .param p1, "s"    # Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    .prologue
    .line 678
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 682
    .local v21, "pida":Ljava/util/List;, "Ljava/util/List<Lcl/birdie/transantiagomaster/newobjetos/Paradero;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 683
    .local v22, "pvuelta":Ljava/util/List;, "Ljava/util/List<Lcl/birdie/transantiagomaster/newobjetos/Paradero;>;"
    const/16 v17, 0x0

    .line 685
    .local v17, "lp":Ljava/util/List;, "Ljava/util/List<Lcl/birdie/transantiagomaster/newobjetos/Paradero;>;"
    move-object/from16 v0, p1

    iget v3, v0, Lcl/birdie/transantiagomaster/newobjetos/Servicio;->id:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 686
    const-string v3, "DatabaseHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "identificando servicio con nombre "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v5, v0, Lcl/birdie/transantiagomaster/newobjetos/Servicio;->nombre:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "servicios"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "idservicio"

    aput-object v6, v4, v5

    .line 689
    const-string v5, "servicio = ?"

    .line 690
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    iget-object v8, v0, Lcl/birdie/transantiagomaster/newobjetos/Servicio;->nombre:Ljava/lang/String;

    aput-object v8, v6, v7

    .line 691
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 688
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    .line 692
    .local v27, "svc":Landroid/database/Cursor;
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 693
    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, p1

    iput v3, v0, Lcl/birdie/transantiagomaster/newobjetos/Servicio;->id:I

    .line 695
    :cond_0
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 696
    move-object/from16 v0, p1

    iget v3, v0, Lcl/birdie/transantiagomaster/newobjetos/Servicio;->id:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 697
    const-string v3, "DatabaseHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "no encontramos id para servicio "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v5, v0, Lcl/birdie/transantiagomaster/newobjetos/Servicio;->nombre:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    const/4 v3, 0x0

    .line 781
    .end local v27    # "svc":Landroid/database/Cursor;
    :goto_0
    return v3

    .line 702
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "itinerarios"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "sentido"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "corritinerario"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "idparadero"

    aput-object v6, v4, v5

    .line 703
    const-string v5, "idservicio = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    iget v8, v0, Lcl/birdie/transantiagomaster/newobjetos/Servicio;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 704
    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "sentido,corritinerario"

    const/4 v10, 0x0

    .line 702
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 705
    .local v16, "it":Landroid/database/Cursor;
    :cond_2
    :goto_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_5

    .line 722
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 724
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 725
    .local v24, "rida":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/birdie/toolkit/LatLng;>;"
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 726
    .local v26, "rvuelta":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/birdie/toolkit/LatLng;>;"
    const/16 v18, 0x0

    .line 729
    .local v18, "lr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/birdie/toolkit/LatLng;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lcl/birdie/transantiagomaster/newobjetos/Servicio;->nombre:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 732
    .local v19, "nombre":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "decos"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "sistema"

    aput-object v7, v5, v6

    .line 733
    const-string v6, "usuario = ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p1

    iget-object v9, v0, Lcl/birdie/transantiagomaster/newobjetos/Servicio;->nombre:Ljava/lang/String;

    aput-object v9, v7, v8

    .line 734
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 732
    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 735
    .local v14, "deco":Landroid/database/Cursor;
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 736
    const/4 v3, 0x0

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 737
    const-string v3, "DatabaseHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "deco obtenido: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_3
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 746
    .end local v14    # "deco":Landroid/database/Cursor;
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "rutas"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "ruta_id"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "sentido"

    aput-object v7, v5, v6

    .line 747
    const-string v6, "servicio = ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v19, v7, v8

    .line 748
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 746
    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 749
    .local v25, "ruta":Landroid/database/Cursor;
    :cond_4
    :goto_3
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_8

    .line 767
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 770
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_c

    .line 771
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    .line 774
    .local v12, "apida":[Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    :goto_4
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_d

    .line 775
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    .line 779
    .local v13, "apvuelta":[Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    :goto_5
    sget-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v3, v3, Lcl/birdie/transantiagomaster/PantallaDatos;->svc:Lcl/birdie/transantiagomaster/handlers/ServiciosController;

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v3, v12, v13, v0, v1}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->cargarDatosItinerario([Lcl/birdie/transantiagomaster/newobjetos/Paradero;[Lcl/birdie/transantiagomaster/newobjetos/Paradero;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 781
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 706
    .end local v12    # "apida":[Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    .end local v13    # "apvuelta":[Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    .end local v18    # "lr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/birdie/toolkit/LatLng;>;"
    .end local v19    # "nombre":Ljava/lang/String;
    .end local v24    # "rida":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/birdie/toolkit/LatLng;>;"
    .end local v25    # "ruta":Landroid/database/Cursor;
    .end local v26    # "rvuelta":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/birdie/toolkit/LatLng;>;"
    :cond_5
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "I"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 707
    move-object/from16 v17, v21

    .line 713
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "paraderos"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "codparadero"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "textoparadero"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "lat"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "lng"

    aput-object v6, v4, v5

    const-string v5, "idparadero = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 715
    .local v20, "par":Landroid/database/Cursor;
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 716
    new-instance v2, Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    const/4 v3, 0x2

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    const/4 v5, 0x3

    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    const/4 v7, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcl/birdie/transantiagomaster/newobjetos/Paradero;-><init>(DDLjava/lang/String;Ljava/lang/String;)V

    .line 717
    .local v2, "p":Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 720
    .end local v2    # "p":Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    :cond_6
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 708
    .end local v20    # "par":Landroid/database/Cursor;
    :cond_7
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "R"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 709
    move-object/from16 v17, v22

    goto :goto_6

    .line 740
    .restart local v18    # "lr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/birdie/toolkit/LatLng;>;"
    .restart local v19    # "nombre":Ljava/lang/String;
    .restart local v24    # "rida":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/birdie/toolkit/LatLng;>;"
    .restart local v26    # "rvuelta":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/birdie/toolkit/LatLng;>;"
    :catch_0
    move-exception v15

    .line 742
    .local v15, "e":Ljava/lang/Exception;
    const-string v3, "DatabaseHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "excepcion en consulta deco: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 750
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v25    # "ruta":Landroid/database/Cursor;
    :cond_8
    const/4 v3, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 752
    .local v23, "rid":Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "I"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 753
    move-object/from16 v18, v24

    .line 757
    :cond_9
    :goto_7
    if-eqz v18, :cond_4

    .line 758
    move-object/from16 v0, p0

    iget-object v3, v0, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "trazados"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "lat"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "lng"

    aput-object v7, v5, v6

    .line 759
    const-string v6, "ruta_id = ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v23, v7, v8

    .line 760
    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "ruta_sec"

    const/4 v11, 0x0

    .line 758
    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v28

    .line 761
    .local v28, "traza":Landroid/database/Cursor;
    :goto_8
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_b

    .line 764
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 754
    .end local v28    # "traza":Landroid/database/Cursor;
    :cond_a
    const/4 v3, 0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "R"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 755
    move-object/from16 v18, v26

    goto :goto_7

    .line 762
    .restart local v28    # "traza":Landroid/database/Cursor;
    :cond_b
    new-instance v3, Lcl/birdie/toolkit/LatLng;

    const/4 v4, 0x0

    move-object/from16 v0, v28

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    const/4 v6, 0x1

    move-object/from16 v0, v28

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcl/birdie/toolkit/LatLng;-><init>(DD)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 773
    .end local v23    # "rid":Ljava/lang/String;
    .end local v28    # "traza":Landroid/database/Cursor;
    :cond_c
    const/4 v12, 0x0

    .restart local v12    # "apida":[Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    goto/16 :goto_4

    .line 777
    :cond_d
    const/4 v13, 0x0

    .restart local v13    # "apvuelta":[Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    goto/16 :goto_5
.end method

.method public final getServicios()[Lcl/birdie/transantiagomaster/newobjetos/Servicio;
    .locals 13

    .prologue
    .line 650
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 654
    .local v11, "svcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/birdie/transantiagomaster/newobjetos/Servicio;>;"
    iget-object v0, p0, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "servicios"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "servicio"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "desde"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "hasta"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "idservicio"

    aput-object v4, v2, v3

    .line 655
    const/4 v3, 0x0

    .line 656
    const/4 v4, 0x0

    .line 657
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "servicio"

    const/4 v8, 0x0

    .line 654
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 658
    .local v10, "svc":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 667
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 669
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 671
    .local v12, "sz":I
    if-lez v12, :cond_1

    .line 672
    new-array v0, v12, [Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    .line 674
    :goto_1
    return-object v0

    .line 659
    .end local v12    # "sz":I
    :cond_0
    new-instance v9, Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    invoke-direct {v9}, Lcl/birdie/transantiagomaster/newobjetos/Servicio;-><init>()V

    .line 660
    .local v9, "s":Lcl/birdie/transantiagomaster/newobjetos/Servicio;
    const/4 v0, 0x3

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcl/birdie/transantiagomaster/newobjetos/Servicio;->id:I

    .line 661
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcl/birdie/transantiagomaster/newobjetos/Servicio;->nombre:Ljava/lang/String;

    .line 662
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcl/birdie/transantiagomaster/newobjetos/Servicio;->textoIda:Ljava/lang/String;

    .line 663
    const/4 v0, 0x2

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcl/birdie/transantiagomaster/newobjetos/Servicio;->textoRegreso:Ljava/lang/String;

    .line 664
    const/4 v0, 0x0

    iput v0, v9, Lcl/birdie/transantiagomaster/newobjetos/Servicio;->sentido:I

    .line 665
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 674
    .end local v9    # "s":Lcl/birdie/transantiagomaster/newobjetos/Servicio;
    .restart local v12    # "sz":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final isOpen()Z
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
