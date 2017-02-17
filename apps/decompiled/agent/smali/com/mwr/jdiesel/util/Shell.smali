.class public Lcom/mwr/jdiesel/util/Shell;
.super Ljava/lang/Object;
.source "Shell.java"


# instance fields
.field private fd:Ljava/lang/Process;

.field private id:[I

.field stderr:Ljava/io/InputStream;

.field stdin:Ljava/io/InputStream;

.field stdout:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v1, p0, Lcom/mwr/jdiesel/util/Shell;->fd:Ljava/lang/Process;

    .line 16
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/mwr/jdiesel/util/Shell;->id:[I

    .line 17
    iput-object v1, p0, Lcom/mwr/jdiesel/util/Shell;->stdin:Ljava/io/InputStream;

    .line 18
    iput-object v1, p0, Lcom/mwr/jdiesel/util/Shell;->stderr:Ljava/io/InputStream;

    .line 19
    iput-object v1, p0, Lcom/mwr/jdiesel/util/Shell;->stdout:Ljava/io/OutputStream;

    .line 22
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "/system/bin/sh -i"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/util/Shell;->fd:Ljava/lang/Process;

    .line 23
    iget-object v0, p0, Lcom/mwr/jdiesel/util/Shell;->fd:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/util/Shell;->stdin:Ljava/io/InputStream;

    .line 24
    iget-object v0, p0, Lcom/mwr/jdiesel/util/Shell;->fd:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/util/Shell;->stderr:Ljava/io/InputStream;

    .line 25
    iget-object v0, p0, Lcom/mwr/jdiesel/util/Shell;->fd:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/util/Shell;->stdout:Ljava/io/OutputStream;

    .line 26
    const-string v0, "cd %s"

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "user.dir"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/util/Shell;->write(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Lcom/mwr/jdiesel/util/Shell;->read()Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mwr/jdiesel/util/Shell;->fd:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 33
    return-void
.end method

.method public read()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0xf

    .line 36
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 38
    .local v2, "value":Ljava/lang/StringBuffer;
    :goto_0
    iget-object v3, p0, Lcom/mwr/jdiesel/util/Shell;->stdin:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v3

    if-gtz v3, :cond_0

    .line 47
    :goto_1
    iget-object v3, p0, Lcom/mwr/jdiesel/util/Shell;->stderr:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v3

    if-gtz v3, :cond_2

    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 39
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v3, p0, Lcom/mwr/jdiesel/util/Shell;->stdin:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 45
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 40
    :cond_1
    iget-object v3, p0, Lcom/mwr/jdiesel/util/Shell;->stdin:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 42
    .local v0, "c":I
    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 39
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 48
    .end local v0    # "c":I
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v3, p0, Lcom/mwr/jdiesel/util/Shell;->stderr:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v3

    if-lt v1, v3, :cond_3

    .line 54
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_1

    .line 49
    :cond_3
    iget-object v3, p0, Lcom/mwr/jdiesel/util/Shell;->stderr:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 51
    .restart local v0    # "c":I
    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public valid()Z
    .locals 2

    .prologue
    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/mwr/jdiesel/util/Shell;->fd:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->exitValue()I
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    const/4 v1, 0x0

    .line 65
    :goto_0
    return v1

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/IllegalThreadStateException;
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public write(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/mwr/jdiesel/util/Shell;->stdout:Ljava/io/OutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 95
    iget-object v0, p0, Lcom/mwr/jdiesel/util/Shell;->stdout:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 96
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 97
    return-void
.end method
