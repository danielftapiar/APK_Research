.class public Lcom/vrem/wifianalyzer/c/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/vrem/wifianalyzer/c/a/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/vrem/wifianalyzer/c/a/c;


# instance fields
.field private final b:I

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vrem/wifianalyzer/c/a/c;

    invoke-direct {v0}, Lcom/vrem/wifianalyzer/c/a/c;-><init>()V

    sput-object v0, Lcom/vrem/wifianalyzer/c/a/c;->a:Lcom/vrem/wifianalyzer/c/a/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/vrem/wifianalyzer/c/a/c;->c:I

    iput v0, p0, Lcom/vrem/wifianalyzer/c/a/c;->b:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/vrem/wifianalyzer/c/a/c;->b:I

    iput p2, p0, Lcom/vrem/wifianalyzer/c/a/c;->c:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/vrem/wifianalyzer/c/a/c;->b:I

    return v0
.end method

.method public a(Lcom/vrem/wifianalyzer/c/a/c;)I
    .locals 3

    new-instance v0, La/a/a/a/a/a;

    invoke-direct {v0}, La/a/a/a/a/a;-><init>()V

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/c/a/c;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/vrem/wifianalyzer/c/a/c;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, La/a/a/a/a/a;->a(II)La/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/c/a/c;->b()I

    move-result v1

    invoke-virtual {p1}, Lcom/vrem/wifianalyzer/c/a/c;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, La/a/a/a/a/a;->a(II)La/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, La/a/a/a/a/a;->a()I

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/vrem/wifianalyzer/c/a/c;->c:I

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/vrem/wifianalyzer/c/a/c;

    invoke-virtual {p0, p1}, Lcom/vrem/wifianalyzer/c/a/c;->a(Lcom/vrem/wifianalyzer/c/a/c;)I

    move-result v0

    return v0
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
    check-cast p1, Lcom/vrem/wifianalyzer/c/a/c;

    new-instance v0, La/a/a/a/a/b;

    invoke-direct {v0}, La/a/a/a/a/b;-><init>()V

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/c/a/c;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/vrem/wifianalyzer/c/a/c;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, La/a/a/a/a/b;->a(II)La/a/a/a/a/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/c/a/c;->b()I

    move-result v1

    invoke-virtual {p1}, Lcom/vrem/wifianalyzer/c/a/c;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, La/a/a/a/a/b;->a(II)La/a/a/a/a/b;

    move-result-object v0

    invoke-virtual {v0}, La/a/a/a/a/b;->a()Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    new-instance v0, La/a/a/a/a/c;

    const/16 v1, 0x11

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, La/a/a/a/a/c;-><init>(II)V

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/c/a/c;->a()I

    move-result v1

    invoke-virtual {v0, v1}, La/a/a/a/a/c;->a(I)La/a/a/a/a/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/c/a/c;->b()I

    move-result v1

    invoke-virtual {v0, v1}, La/a/a/a/a/c;->a(I)La/a/a/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, La/a/a/a/a/c;->a()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, La/a/a/a/a/e;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
