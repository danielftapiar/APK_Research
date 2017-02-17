.class final La/a/a/a/a/g$b;
.super La/a/a/a/a/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/a/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private h:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, La/a/a/a/a/g;-><init>()V

    const-string v0, "\""

    iput-object v0, p0, La/a/a/a/a/g$b;->h:Ljava/lang/String;

    invoke-virtual {p0, v1}, La/a/a/a/a/g$b;->a(Z)V

    invoke-virtual {p0, v1}, La/a/a/a/a/g$b;->c(Z)V

    const-string v0, "{"

    invoke-virtual {p0, v0}, La/a/a/a/a/g$b;->c(Ljava/lang/String;)V

    const-string v0, "}"

    invoke-virtual {p0, v0}, La/a/a/a/a/g$b;->d(Ljava/lang/String;)V

    const-string v0, "["

    invoke-virtual {p0, v0}, La/a/a/a/a/g$b;->a(Ljava/lang/String;)V

    const-string v0, "]"

    invoke-virtual {p0, v0}, La/a/a/a/a/g$b;->b(Ljava/lang/String;)V

    const-string v0, ","

    invoke-virtual {p0, v0}, La/a/a/a/a/g$b;->f(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {p0, v0}, La/a/a/a/a/g$b;->e(Ljava/lang/String;)V

    const-string v0, "null"

    invoke-virtual {p0, v0}, La/a/a/a/a/g$b;->g(Ljava/lang/String;)V

    const-string v0, "\"<"

    invoke-virtual {p0, v0}, La/a/a/a/a/g$b;->j(Ljava/lang/String;)V

    const-string v0, ">\""

    invoke-virtual {p0, v0}, La/a/a/a/a/g$b;->k(Ljava/lang/String;)V

    const-string v0, "\"<size="

    invoke-virtual {p0, v0}, La/a/a/a/a/g$b;->h(Ljava/lang/String;)V

    const-string v0, ">\""

    invoke-virtual {p0, v0}, La/a/a/a/a/g$b;->i(Ljava/lang/String;)V

    return-void
.end method

.method private d(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method private l(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, La/a/a/a/a/g$b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, La/a/a/a/a/g$b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private m(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, La/a/a/a/a/g$b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, La/a/a/a/a/g$b;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(Ljava/lang/StringBuffer;Ljava/lang/String;C)V
    .locals 1

    invoke-static {p3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, La/a/a/a/a/g$b;->d(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V
    .locals 2

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Field names are mandatory when using JsonToStringStyle"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p4}, La/a/a/a/a/g$b;->a(Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "FullDetail must be true when using JsonToStringStyle"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, La/a/a/a/a/g;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-void
.end method

.method protected b(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 2

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Field names are mandatory when using JsonToStringStyle"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, La/a/a/a/a/g$b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/a/a/a/a/g$b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, v0}, La/a/a/a/a/g;->b(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method protected b(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    if-nez p3, :cond_0

    invoke-virtual {p0, p1, p2}, La/a/a/a/a/g$b;->a(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    instance-of v0, p3, Ljava/lang/String;

    if-nez v0, :cond_1

    instance-of v0, p3, Ljava/lang/Character;

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, La/a/a/a/a/g$b;->d(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    instance-of v0, p3, Ljava/lang/Number;

    if-nez v0, :cond_3

    instance-of v0, p3, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_4
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, La/a/a/a/a/g$b;->m(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-direct {p0, v0}, La/a/a/a/a/g$b;->l(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_6
    invoke-virtual {p0, p1, p2, v0}, La/a/a/a/a/g$b;->b(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
