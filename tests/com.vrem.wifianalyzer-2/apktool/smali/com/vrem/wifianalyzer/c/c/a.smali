.class public Lcom/vrem/wifianalyzer/c/c/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/vrem/wifianalyzer/c/c/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/vrem/wifianalyzer/c/a/c;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/vrem/wifianalyzer/c/a/c;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vrem/wifianalyzer/c/c/a;->a:Lcom/vrem/wifianalyzer/c/a/c;

    iput p2, p0, Lcom/vrem/wifianalyzer/c/c/a;->b:I

    return-void
.end method


# virtual methods
.method public a(Lcom/vrem/wifianalyzer/c/c/a;)I
    .locals 3

    new-instance v0, La/a/a/a/a/a;

    invoke-direct {v0}, La/a/a/a/a/a;-><init>()V

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/c/c/a;->b()I

    move-result v1

    invoke-virtual {p1}, Lcom/vrem/wifianalyzer/c/c/a;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, La/a/a/a/a/a;->a(II)La/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/c/c/a;->a()Lcom/vrem/wifianalyzer/c/a/c;

    move-result-object v1

    invoke-virtual {p1}, Lcom/vrem/wifianalyzer/c/c/a;->a()Lcom/vrem/wifianalyzer/c/a/c;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, La/a/a/a/a/a;->a(Ljava/lang/Object;Ljava/lang/Object;)La/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, La/a/a/a/a/a;->a()I

    move-result v0

    return v0
.end method

.method public a()Lcom/vrem/wifianalyzer/c/a/c;
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/c/a;->a:Lcom/vrem/wifianalyzer/c/a/c;

    return-object v0
.end method

.method b()I
    .locals 1

    iget v0, p0, Lcom/vrem/wifianalyzer/c/c/a;->b:I

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/vrem/wifianalyzer/c/c/a;

    invoke-virtual {p0, p1}, Lcom/vrem/wifianalyzer/c/c/a;->a(Lcom/vrem/wifianalyzer/c/c/a;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, La/a/a/a/a/e;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
