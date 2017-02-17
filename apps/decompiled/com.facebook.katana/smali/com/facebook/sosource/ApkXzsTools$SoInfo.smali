.class public final Lcom/facebook/sosource/ApkXzsTools$SoInfo;
.super Ljava/lang/Object;
.source "ApkXzsTools.java"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    iput-object p1, p0, Lcom/facebook/sosource/ApkXzsTools$SoInfo;->c:Ljava/lang/String;

    .line 347
    iput p2, p0, Lcom/facebook/sosource/ApkXzsTools$SoInfo;->a:I

    .line 348
    iput-object p3, p0, Lcom/facebook/sosource/ApkXzsTools$SoInfo;->d:Ljava/lang/String;

    .line 349
    iput p4, p0, Lcom/facebook/sosource/ApkXzsTools$SoInfo;->b:I

    .line 350
    iput-object p5, p0, Lcom/facebook/sosource/ApkXzsTools$SoInfo;->e:Ljava/lang/String;

    .line 351
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 355
    instance-of v1, p1, Lcom/facebook/sosource/ApkXzsTools$SoInfo;

    if-nez v1, :cond_1

    .line 359
    :cond_0
    :goto_0
    return v0

    .line 358
    :cond_1
    check-cast p1, Lcom/facebook/sosource/ApkXzsTools$SoInfo;

    .line 359
    iget v1, p0, Lcom/facebook/sosource/ApkXzsTools$SoInfo;->a:I

    iget v2, p1, Lcom/facebook/sosource/ApkXzsTools$SoInfo;->a:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/facebook/sosource/ApkXzsTools$SoInfo;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/facebook/sosource/ApkXzsTools$SoInfo;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/sosource/ApkXzsTools$SoInfo;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/facebook/sosource/ApkXzsTools$SoInfo;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/sosource/ApkXzsTools$SoInfo;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/facebook/sosource/ApkXzsTools$SoInfo;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 367
    iget v0, p0, Lcom/facebook/sosource/ApkXzsTools$SoInfo;->b:I

    iget v1, p0, Lcom/facebook/sosource/ApkXzsTools$SoInfo;->a:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/facebook/sosource/ApkXzsTools$SoInfo;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/facebook/sosource/ApkXzsTools$SoInfo;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/facebook/sosource/ApkXzsTools$SoInfo;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
