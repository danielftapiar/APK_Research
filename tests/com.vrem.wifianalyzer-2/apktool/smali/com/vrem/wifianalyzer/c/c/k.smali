.class public Lcom/vrem/wifianalyzer/c/c/k;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/vrem/wifianalyzer/c/c/k;


# instance fields
.field private final b:I

.field private final c:I

.field private final d:Lcom/vrem/wifianalyzer/c/a/j;

.field private final e:Lcom/vrem/wifianalyzer/c/a/b;

.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/vrem/wifianalyzer/c/c/k;

    sget-object v1, Lcom/vrem/wifianalyzer/c/a/j;->a:Lcom/vrem/wifianalyzer/c/a/j;

    invoke-direct {v0, v2, v2, v1, v2}, Lcom/vrem/wifianalyzer/c/c/k;-><init>(IILcom/vrem/wifianalyzer/c/a/j;I)V

    sput-object v0, Lcom/vrem/wifianalyzer/c/c/k;->a:Lcom/vrem/wifianalyzer/c/c/k;

    return-void
.end method

.method public constructor <init>(IILcom/vrem/wifianalyzer/c/a/j;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/vrem/wifianalyzer/c/c/k;->b:I

    iput p2, p0, Lcom/vrem/wifianalyzer/c/c/k;->c:I

    iput-object p3, p0, Lcom/vrem/wifianalyzer/c/c/k;->d:Lcom/vrem/wifianalyzer/c/a/j;

    iput p4, p0, Lcom/vrem/wifianalyzer/c/c/k;->f:I

    invoke-static {p1}, Lcom/vrem/wifianalyzer/c/a/b;->a(I)Lcom/vrem/wifianalyzer/c/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/vrem/wifianalyzer/c/c/k;->e:Lcom/vrem/wifianalyzer/c/a/b;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/vrem/wifianalyzer/c/c/k;->b:I

    return v0
.end method

.method public a(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/c/c/k;->c()I

    move-result v0

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/c/c/k;->d()I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/vrem/wifianalyzer/c/c/k;->c:I

    return v0
.end method

.method public c()I
    .locals 2

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/c/c/k;->b()I

    move-result v0

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/c/c/k;->f()Lcom/vrem/wifianalyzer/c/a/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vrem/wifianalyzer/c/a/j;->b()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public d()I
    .locals 2

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/c/c/k;->b()I

    move-result v0

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/c/c/k;->f()Lcom/vrem/wifianalyzer/c/a/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vrem/wifianalyzer/c/a/j;->b()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public e()Lcom/vrem/wifianalyzer/c/a/b;
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/c/k;->e:Lcom/vrem/wifianalyzer/c/a/b;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v1, La/a/a/a/a/b;

    invoke-direct {v1}, La/a/a/a/a/b;-><init>()V

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/c/c/k;->a()I

    move-result v2

    move-object v0, p1

    check-cast v0, Lcom/vrem/wifianalyzer/c/c/k;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/c/k;->a()I

    move-result v0

    invoke-virtual {v1, v2, v0}, La/a/a/a/a/b;->a(II)La/a/a/a/a/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/c/c/k;->f()Lcom/vrem/wifianalyzer/c/a/j;

    move-result-object v1

    check-cast p1, Lcom/vrem/wifianalyzer/c/c/k;

    invoke-virtual {p1}, Lcom/vrem/wifianalyzer/c/c/k;->f()Lcom/vrem/wifianalyzer/c/a/j;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, La/a/a/a/a/b;->a(Ljava/lang/Object;Ljava/lang/Object;)La/a/a/a/a/b;

    move-result-object v0

    invoke-virtual {v0}, La/a/a/a/a/b;->a()Z

    move-result v0

    goto :goto_0
.end method

.method public f()Lcom/vrem/wifianalyzer/c/a/j;
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/c/k;->d:Lcom/vrem/wifianalyzer/c/a/j;

    return-object v0
.end method

.method public g()Lcom/vrem/wifianalyzer/c/a/c;
    .locals 2

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/c/c/k;->e()Lcom/vrem/wifianalyzer/c/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/a/b;->d()Lcom/vrem/wifianalyzer/c/a/g;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/c/c/k;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vrem/wifianalyzer/c/a/g;->b(I)Lcom/vrem/wifianalyzer/c/a/c;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/vrem/wifianalyzer/c/a/c;
    .locals 2

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/c/c/k;->e()Lcom/vrem/wifianalyzer/c/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/a/b;->d()Lcom/vrem/wifianalyzer/c/a/g;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/c/c/k;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vrem/wifianalyzer/c/a/g;->b(I)Lcom/vrem/wifianalyzer/c/a/c;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    new-instance v0, La/a/a/a/a/c;

    const/16 v1, 0x11

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, La/a/a/a/a/c;-><init>(II)V

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/c/c/k;->a()I

    move-result v1

    invoke-virtual {v0, v1}, La/a/a/a/a/c;->a(I)La/a/a/a/a/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/c/c/k;->f()Lcom/vrem/wifianalyzer/c/a/j;

    move-result-object v1

    invoke-virtual {v0, v1}, La/a/a/a/a/c;->a(Ljava/lang/Object;)La/a/a/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, La/a/a/a/a/c;->a()I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/vrem/wifianalyzer/c/c/k;->f:I

    return v0
.end method

.method public j()Lcom/vrem/wifianalyzer/c/c/f;
    .locals 1

    iget v0, p0, Lcom/vrem/wifianalyzer/c/c/k;->f:I

    invoke-static {v0}, Lcom/vrem/wifianalyzer/c/c/f;->a(I)Lcom/vrem/wifianalyzer/c/c/f;

    move-result-object v0

    return-object v0
.end method

.method public k()D
    .locals 2

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/c/c/k;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/c/c/k;->i()I

    move-result v1

    invoke-static {v0, v1}, Lcom/vrem/wifianalyzer/c/c/l;->a(II)D

    move-result-wide v0

    return-wide v0
.end method

.method public l()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/c/c/k;->g()Lcom/vrem/wifianalyzer/c/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/a/c;->a()I

    move-result v1

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/c/c/k;->h()Lcom/vrem/wifianalyzer/c/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/a/c;->a()I

    move-result v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, La/a/a/a/a/e;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
