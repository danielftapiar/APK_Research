.class public Lcom/prey/actions/fileretrieval/FileretrievalDatasource;
.super Ljava/lang/Object;
.source "FileretrievalDatasource.java"


# instance fields
.field private dbHelper:Lcom/prey/actions/fileretrieval/FileretrievalOpenHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/prey/actions/fileretrieval/FileretrievalOpenHelper;

    invoke-direct {v0, p1}, Lcom/prey/actions/fileretrieval/FileretrievalOpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/prey/actions/fileretrieval/FileretrievalDatasource;->dbHelper:Lcom/prey/actions/fileretrieval/FileretrievalOpenHelper;

    .line 24
    return-void
.end method


# virtual methods
.method public createGeofence(Lcom/prey/actions/fileretrieval/FileretrievalDto;)V
    .locals 4
    .param p1, "dto"    # Lcom/prey/actions/fileretrieval/FileretrievalDto;

    .prologue
    .line 28
    :try_start_0
    iget-object v2, p0, Lcom/prey/actions/fileretrieval/FileretrievalDatasource;->dbHelper:Lcom/prey/actions/fileretrieval/FileretrievalOpenHelper;

    invoke-virtual {v2, p1}, Lcom/prey/actions/fileretrieval/FileretrievalOpenHelper;->insertFileretrieval(Lcom/prey/actions/fileretrieval/FileretrievalDto;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v2, p0, Lcom/prey/actions/fileretrieval/FileretrievalDatasource;->dbHelper:Lcom/prey/actions/fileretrieval/FileretrievalOpenHelper;

    invoke-virtual {v2, p1}, Lcom/prey/actions/fileretrieval/FileretrievalOpenHelper;->updateFileretrieval(Lcom/prey/actions/fileretrieval/FileretrievalDto;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 32
    :catch_1
    move-exception v1

    .line 33
    .local v1, "e1":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error db update:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public deleteAllFileretrieval()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/prey/actions/fileretrieval/FileretrievalDatasource;->dbHelper:Lcom/prey/actions/fileretrieval/FileretrievalOpenHelper;

    invoke-virtual {v0}, Lcom/prey/actions/fileretrieval/FileretrievalOpenHelper;->deleteAllFileretrieval()V

    .line 52
    return-void
.end method

.method public deleteFileretrieval(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/prey/actions/fileretrieval/FileretrievalDatasource;->dbHelper:Lcom/prey/actions/fileretrieval/FileretrievalOpenHelper;

    invoke-virtual {v0, p1}, Lcom/prey/actions/fileretrieval/FileretrievalOpenHelper;->deleteFileretrieval(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public getAllFileretrieval()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/prey/actions/fileretrieval/FileretrievalDto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/prey/actions/fileretrieval/FileretrievalDatasource;->dbHelper:Lcom/prey/actions/fileretrieval/FileretrievalOpenHelper;

    invoke-virtual {v0}, Lcom/prey/actions/fileretrieval/FileretrievalOpenHelper;->getAllFileretrieval()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFileretrievals(Ljava/lang/String;)Lcom/prey/actions/fileretrieval/FileretrievalDto;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/prey/actions/fileretrieval/FileretrievalDatasource;->dbHelper:Lcom/prey/actions/fileretrieval/FileretrievalOpenHelper;

    invoke-virtual {v0, p1}, Lcom/prey/actions/fileretrieval/FileretrievalOpenHelper;->getFileretrieval(Ljava/lang/String;)Lcom/prey/actions/fileretrieval/FileretrievalDto;

    move-result-object v0

    return-object v0
.end method
