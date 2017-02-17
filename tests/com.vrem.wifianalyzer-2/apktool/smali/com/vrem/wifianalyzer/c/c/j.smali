.class public Lcom/vrem/wifianalyzer/c/c/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/vrem/wifianalyzer/c/c/j;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/vrem/wifianalyzer/c/c/j;


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vrem/wifianalyzer/c/c/j;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/vrem/wifianalyzer/c/c/k;

.field private final g:Lcom/vrem/wifianalyzer/c/c/g;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/vrem/wifianalyzer/c/c/j;

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    sget-object v4, Lcom/vrem/wifianalyzer/c/c/k;->a:Lcom/vrem/wifianalyzer/c/c/k;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vrem/wifianalyzer/c/c/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vrem/wifianalyzer/c/c/k;)V

    sput-object v0, Lcom/vrem/wifianalyzer/c/c/j;->a:Lcom/vrem/wifianalyzer/c/c/j;

    return-void
.end method

.method public constructor <init>(Lcom/vrem/wifianalyzer/c/c/j;Lcom/vrem/wifianalyzer/c/c/g;)V
    .locals 6

    iget-object v1, p1, Lcom/vrem/wifianalyzer/c/c/j;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/vrem/wifianalyzer/c/c/j;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/vrem/wifianalyzer/c/c/j;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/vrem/wifianalyzer/c/c/j;->f()Lcom/vrem/wifianalyzer/c/c/k;

    move-result-object v4

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vrem/wifianalyzer/c/c/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vrem/wifianalyzer/c/c/k;Lcom/vrem/wifianalyzer/c/c/g;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vrem/wifianalyzer/c/c/k;)V
    .locals 6

    sget-object v5, Lcom/vrem/wifianalyzer/c/c/g;->a:Lcom/vrem/wifianalyzer/c/c/g;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/vrem/wifianalyzer/c/c/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vrem/wifianalyzer/c/c/k;Lcom/vrem/wifianalyzer/c/c/g;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vrem/wifianalyzer/c/c/k;Lcom/vrem/wifianalyzer/c/c/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vrem/wifianalyzer/c/c/j;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/vrem/wifianalyzer/c/c/j;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/vrem/wifianalyzer/c/c/j;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/vrem/wifianalyzer/c/c/j;->f:Lcom/vrem/wifianalyzer/c/c/k;

    iput-object p5, p0, Lcom/vrem/wifianalyzer/c/c/j;->g:Lcom/vrem/wifianalyzer/c/c/g;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vrem/wifianalyzer/c/c/j;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Lcom/vrem/wifianalyzer/c/c/d;
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/c/j;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/vrem/wifianalyzer/c/c/d;->b(Ljava/lang/String;)Lcom/vrem/wifianalyzer/c/c/d;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/vrem/wifianalyzer/c/c/j;)V
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/c/j;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lcom/vrem/wifianalyzer/c/c/j;)I
    .locals 3

    new-instance v0, La/a/a/a/a/a;

    invoke-direct {v0}, La/a/a/a/a/a;-><init>()V

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/c/c/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/vrem/wifianalyzer/c/c/j;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, La/a/a/a/a/a;->a(Ljava/lang/Object;Ljava/lang/Object;)La/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/c/c/j;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/vrem/wifianalyzer/c/c/j;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, La/a/a/a/a/a;->a(Ljava/lang/Object;Ljava/lang/Object;)La/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, La/a/a/a/a/a;->a()I

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/c/c/j;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "***"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/c/j;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/c/j;->c:Ljava/lang/String;

    invoke-static {v0}, La/a/a/a/e;->c(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/vrem/wifianalyzer/c/c/j;

    invoke-virtual {p0, p1}, Lcom/vrem/wifianalyzer/c/c/j;->b(Lcom/vrem/wifianalyzer/c/c/j;)I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/c/j;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/c/j;->e:Ljava/lang/String;

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
    check-cast p1, Lcom/vrem/wifianalyzer/c/c/j;

    new-instance v0, La/a/a/a/a/b;

    invoke-direct {v0}, La/a/a/a/a/b;-><init>()V

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/c/c/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/vrem/wifianalyzer/c/c/j;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, La/a/a/a/a/b;->a(Ljava/lang/Object;Ljava/lang/Object;)La/a/a/a/a/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/c/c/j;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/vrem/wifianalyzer/c/c/j;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, La/a/a/a/a/b;->a(Ljava/lang/Object;Ljava/lang/Object;)La/a/a/a/a/b;

    move-result-object v0

    invoke-virtual {v0}, La/a/a/a/a/b;->a()Z

    move-result v0

    goto :goto_0
.end method

.method public f()Lcom/vrem/wifianalyzer/c/c/k;
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/c/j;->f:Lcom/vrem/wifianalyzer/c/c/k;

    return-object v0
.end method

.method public g()Lcom/vrem/wifianalyzer/c/c/g;
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/c/j;->g:Lcom/vrem/wifianalyzer/c/c/g;

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/vrem/wifianalyzer/c/c/j;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/c/j;->b:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    new-instance v0, La/a/a/a/a/c;

    const/16 v1, 0x11

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, La/a/a/a/a/c;-><init>(II)V

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/c/c/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, La/a/a/a/a/c;->a(Ljava/lang/Object;)La/a/a/a/a/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/c/c/j;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, La/a/a/a/a/c;->a(Ljava/lang/Object;)La/a/a/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, La/a/a/a/a/c;->a()I

    move-result v0

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 4

    const-string v0, "%s (%s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/c/c/j;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/c/c/j;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, La/a/a/a/a/e;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
