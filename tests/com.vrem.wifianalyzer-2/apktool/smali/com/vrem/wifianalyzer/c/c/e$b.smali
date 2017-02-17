.class Lcom/vrem/wifianalyzer/c/c/e$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vrem/wifianalyzer/c/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/vrem/wifianalyzer/c/c/j;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/vrem/wifianalyzer/c/c/j;Lcom/vrem/wifianalyzer/c/c/j;)I
    .locals 3

    new-instance v0, La/a/a/a/a/a;

    invoke-direct {v0}, La/a/a/a/a/a;-><init>()V

    invoke-virtual {p1}, Lcom/vrem/wifianalyzer/c/c/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/vrem/wifianalyzer/c/c/j;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, La/a/a/a/a/a;->a(Ljava/lang/Object;Ljava/lang/Object;)La/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {p2}, Lcom/vrem/wifianalyzer/c/c/j;->f()Lcom/vrem/wifianalyzer/c/c/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vrem/wifianalyzer/c/c/k;->i()I

    move-result v1

    invoke-virtual {p1}, Lcom/vrem/wifianalyzer/c/c/j;->f()Lcom/vrem/wifianalyzer/c/c/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vrem/wifianalyzer/c/c/k;->i()I

    move-result v2

    invoke-virtual {v0, v1, v2}, La/a/a/a/a/a;->a(II)La/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/vrem/wifianalyzer/c/c/j;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/vrem/wifianalyzer/c/c/j;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, La/a/a/a/a/a;->a(Ljava/lang/Object;Ljava/lang/Object;)La/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, La/a/a/a/a/a;->a()I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/vrem/wifianalyzer/c/c/j;

    check-cast p2, Lcom/vrem/wifianalyzer/c/c/j;

    invoke-virtual {p0, p1, p2}, Lcom/vrem/wifianalyzer/c/c/e$b;->a(Lcom/vrem/wifianalyzer/c/c/j;Lcom/vrem/wifianalyzer/c/c/j;)I

    move-result v0

    return v0
.end method
