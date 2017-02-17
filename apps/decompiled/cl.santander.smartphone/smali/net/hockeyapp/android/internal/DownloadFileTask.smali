.class public Lnet/hockeyapp/android/internal/DownloadFileTask;
.super Landroid/os/AsyncTask;
.source "DownloadFileTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private filePath:Ljava/lang/String;

.field private filename:Ljava/lang/String;

.field private notifier:Lnet/hockeyapp/android/internal/DownloadFileListener;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private urlString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lnet/hockeyapp/android/internal/DownloadFileListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "urlString"    # Ljava/lang/String;
    .param p3, "notifier"    # Lnet/hockeyapp/android/internal/DownloadFileListener;

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 70
    iput-object p1, p0, Lnet/hockeyapp/android/internal/DownloadFileTask;->context:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lnet/hockeyapp/android/internal/DownloadFileTask;->urlString:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/hockeyapp/android/internal/DownloadFileTask;->filename:Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/hockeyapp/android/internal/DownloadFileTask;->filePath:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lnet/hockeyapp/android/internal/DownloadFileTask;->notifier:Lnet/hockeyapp/android/internal/DownloadFileListener;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lnet/hockeyapp/android/internal/DownloadFileTask;)Lnet/hockeyapp/android/internal/DownloadFileListener;
    .locals 1
    .param p0, "x0"    # Lnet/hockeyapp/android/internal/DownloadFileTask;

    .prologue
    .line 61
    iget-object v0, p0, Lnet/hockeyapp/android/internal/DownloadFileTask;->notifier:Lnet/hockeyapp/android/internal/DownloadFileListener;

    return-object v0
.end method

.method private getURLString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/hockeyapp/android/internal/DownloadFileTask;->urlString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&type=apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public attach(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    iput-object p1, p0, Lnet/hockeyapp/android/internal/DownloadFileTask;->context:Landroid/content/Context;

    .line 79
    return-void
.end method

.method protected createConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 3
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 125
    .local v0, "connection":Ljava/net/URLConnection;
    const-string v1, "connection"

    const-string v2, "close"

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-object v0
.end method

.method public detach()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lnet/hockeyapp/android/internal/DownloadFileTask;->context:Landroid/content/Context;

    .line 83
    iput-object v0, p0, Lnet/hockeyapp/android/internal/DownloadFileTask;->progressDialog:Landroid/app/ProgressDialog;

    .line 84
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 20
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    .line 89
    :try_start_0
    new-instance v13, Ljava/net/URL;

    invoke-direct/range {p0 .. p0}, Lnet/hockeyapp/android/internal/DownloadFileTask;->getURLString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 90
    .local v13, "url":Ljava/net/URL;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lnet/hockeyapp/android/internal/DownloadFileTask;->createConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v2

    .line 91
    .local v2, "connection":Ljava/net/URLConnection;
    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    .line 93
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentLength()I

    move-result v9

    .line 95
    .local v9, "lenghtOfFile":I
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/hockeyapp/android/internal/DownloadFileTask;->filePath:Ljava/lang/String;

    invoke-direct {v5, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    .local v5, "dir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 97
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/hockeyapp/android/internal/DownloadFileTask;->filename:Ljava/lang/String;

    invoke-direct {v7, v5, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 99
    .local v7, "file":Ljava/io/File;
    new-instance v8, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    invoke-direct {v8, v14}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 100
    .local v8, "input":Ljava/io/InputStream;
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 102
    .local v10, "output":Ljava/io/OutputStream;
    const/16 v14, 0x400

    new-array v4, v14, [B

    .line 103
    .local v4, "data":[B
    const/4 v3, 0x0

    .line 104
    .local v3, "count":I
    const-wide/16 v11, 0x0

    .line 105
    .local v11, "total":J
    :goto_0
    invoke-virtual {v8, v4}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v14, -0x1

    if-eq v3, v14, :cond_0

    .line 106
    int-to-long v14, v3

    add-long/2addr v11, v14

    .line 107
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Integer;

    const/4 v15, 0x0

    const-wide/16 v16, 0x64

    mul-long v16, v16, v11

    int-to-long v0, v9

    move-wide/from16 v18, v0

    div-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lnet/hockeyapp/android/internal/DownloadFileTask;->publishProgress([Ljava/lang/Object;)V

    .line 108
    const/4 v14, 0x0

    invoke-virtual {v10, v4, v14, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    .end local v2    # "connection":Ljava/net/URLConnection;
    .end local v3    # "count":I
    .end local v4    # "data":[B
    .end local v5    # "dir":Ljava/io/File;
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "input":Ljava/io/InputStream;
    .end local v9    # "lenghtOfFile":I
    .end local v10    # "output":Ljava/io/OutputStream;
    .end local v11    # "total":J
    .end local v13    # "url":Ljava/net/URL;
    :catch_0
    move-exception v6

    .line 118
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 119
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    .end local v6    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v14

    .line 111
    .restart local v2    # "connection":Ljava/net/URLConnection;
    .restart local v3    # "count":I
    .restart local v4    # "data":[B
    .restart local v5    # "dir":Ljava/io/File;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v8    # "input":Ljava/io/InputStream;
    .restart local v9    # "lenghtOfFile":I
    .restart local v10    # "output":Ljava/io/OutputStream;
    .restart local v11    # "total":J
    .restart local v13    # "url":Ljava/net/URL;
    :cond_0
    :try_start_1
    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V

    .line 112
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 113
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 115
    const-wide/16 v14, 0x0

    cmp-long v14, v11, v14

    if-lez v14, :cond_1

    const/4 v14, 0x1

    :goto_2
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v14

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 61
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/internal/DownloadFileTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 148
    iget-object v2, p0, Lnet/hockeyapp/android/internal/DownloadFileTask;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_0

    .line 150
    :try_start_0
    iget-object v2, p0, Lnet/hockeyapp/android/internal/DownloadFileTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 157
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 158
    iget-object v2, p0, Lnet/hockeyapp/android/internal/DownloadFileTask;->notifier:Lnet/hockeyapp/android/internal/DownloadFileListener;

    invoke-virtual {v2, p0}, Lnet/hockeyapp/android/internal/DownloadFileListener;->downloadSuccessful(Lnet/hockeyapp/android/internal/DownloadFileTask;)V

    .line 160
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lnet/hockeyapp/android/internal/DownloadFileTask;->filePath:Ljava/lang/String;

    iget-object v4, p0, Lnet/hockeyapp/android/internal/DownloadFileTask;->filename:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 163
    iget-object v2, p0, Lnet/hockeyapp/android/internal/DownloadFileTask;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 189
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 167
    :cond_1
    :try_start_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lnet/hockeyapp/android/internal/DownloadFileTask;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 168
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lnet/hockeyapp/android/internal/DownloadFileTask;->notifier:Lnet/hockeyapp/android/internal/DownloadFileListener;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lnet/hockeyapp/android/Strings;->get(Lnet/hockeyapp/android/StringListener;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 169
    iget-object v2, p0, Lnet/hockeyapp/android/internal/DownloadFileTask;->notifier:Lnet/hockeyapp/android/internal/DownloadFileListener;

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lnet/hockeyapp/android/Strings;->get(Lnet/hockeyapp/android/StringListener;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 171
    iget-object v2, p0, Lnet/hockeyapp/android/internal/DownloadFileTask;->notifier:Lnet/hockeyapp/android/internal/DownloadFileListener;

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lnet/hockeyapp/android/Strings;->get(Lnet/hockeyapp/android/StringListener;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lnet/hockeyapp/android/internal/DownloadFileTask$1;

    invoke-direct {v3, p0}, Lnet/hockeyapp/android/internal/DownloadFileTask$1;-><init>(Lnet/hockeyapp/android/internal/DownloadFileTask;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 177
    iget-object v2, p0, Lnet/hockeyapp/android/internal/DownloadFileTask;->notifier:Lnet/hockeyapp/android/internal/DownloadFileListener;

    const/4 v3, 0x7

    invoke-static {v2, v3}, Lnet/hockeyapp/android/Strings;->get(Lnet/hockeyapp/android/StringListener;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lnet/hockeyapp/android/internal/DownloadFileTask$2;

    invoke-direct {v3, p0}, Lnet/hockeyapp/android/internal/DownloadFileTask$2;-><init>(Lnet/hockeyapp/android/internal/DownloadFileTask;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 183
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 185
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :catch_0
    move-exception v2

    goto :goto_1

    .line 152
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 61
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/internal/DownloadFileTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .param p1, "args"    # [Ljava/lang/Integer;

    .prologue
    .line 132
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/internal/DownloadFileTask;->progressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lnet/hockeyapp/android/internal/DownloadFileTask;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/hockeyapp/android/internal/DownloadFileTask;->progressDialog:Landroid/app/ProgressDialog;

    .line 134
    iget-object v0, p0, Lnet/hockeyapp/android/internal/DownloadFileTask;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 135
    iget-object v0, p0, Lnet/hockeyapp/android/internal/DownloadFileTask;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lnet/hockeyapp/android/internal/DownloadFileTask;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 137
    iget-object v0, p0, Lnet/hockeyapp/android/internal/DownloadFileTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 139
    :cond_0
    iget-object v0, p0, Lnet/hockeyapp/android/internal/DownloadFileTask;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 61
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/internal/DownloadFileTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
