.class public Lnet/veritran/vtuserapplication/core/elements/TokenElement;
.super Lnet/veritran/vtuserapplication/core/elements/SerializableElement;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lnet/veritran/vtuserapplication/core/elements/SerializableElement;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->a:Ljava/lang/String;

    iput-boolean v1, p0, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->b:Z

    iput-boolean v1, p0, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->c:Z

    iput-boolean v1, p0, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->d:Z

    iput-boolean v1, p0, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->e:Z

    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lnet/veritran/vtuserapplication/core/elements/TokenElement;
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;-><init>()V

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    and-int/lit8 v3, v1, 0x2

    if-lez v3, :cond_0

    iput-boolean v5, v0, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->c:Z

    :cond_0
    and-int/lit8 v3, v1, 0x1

    if-lez v3, :cond_1

    iput-boolean v5, v0, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->b:Z

    :cond_1
    and-int/lit8 v1, v1, 0x4

    if-lez v1, :cond_2

    iput-boolean v5, v0, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->d:Z

    :cond_2
    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->setId(I)V

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->a:Ljava/lang/String;

    return-object v0
.end method

.method public isEncryted()Z
    .locals 1

    iget-boolean v0, p0, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->d:Z

    return v0
.end method

.method public isLongTermPersistent()Z
    .locals 1

    iget-boolean v0, p0, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->e:Z

    return v0
.end method

.method public isPersistent()Z
    .locals 1

    iget-boolean v0, p0, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->b:Z

    return v0
.end method

.method public isSecret()Z
    .locals 1

    iget-boolean v0, p0, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->c:Z

    return v0
.end method

.method public serialize()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->b:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-boolean v1, p0, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->c:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    :cond_1
    iget-boolean v1, p0, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->d:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lnet/veritran/vtuserapplication/utils/VTStringUtils;->getStringWithLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->a:Ljava/lang/String;

    invoke-static {v0, v3}, Lnet/veritran/vtuserapplication/utils/VTStringUtils;->getStringWithLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setEncryted(Z)V
    .locals 1

    iget-boolean v0, p0, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->d:Z

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->d:Z

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->notifyInternalStateChanged()V

    goto :goto_0
.end method

.method public setLongTermPersistent(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->e:Z

    return-void
.end method

.method public setPersistent(Z)V
    .locals 1

    iget-boolean v0, p0, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->b:Z

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->b:Z

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->notifyInternalStateChanged()V

    goto :goto_0
.end method

.method public setSecret(Z)V
    .locals 1

    iget-boolean v0, p0, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->c:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->c:Z

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->notifyInternalStateChanged()V

    goto :goto_0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->notifyInternalStateChanged()V

    goto :goto_0
.end method
