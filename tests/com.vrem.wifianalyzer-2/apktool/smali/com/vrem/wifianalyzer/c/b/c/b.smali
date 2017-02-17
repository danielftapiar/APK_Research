.class public Lcom/vrem/wifianalyzer/c/b/c/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/vrem/wifianalyzer/c/b/c/b;


# instance fields
.field private final b:J

.field private final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/32 v2, 0x9e9e9e

    new-instance v0, Lcom/vrem/wifianalyzer/c/b/c/b;

    invoke-direct {v0, v2, v3, v2, v3}, Lcom/vrem/wifianalyzer/c/b/c/b;-><init>(JJ)V

    sput-object v0, Lcom/vrem/wifianalyzer/c/b/c/b;->a:Lcom/vrem/wifianalyzer/c/b/c/b;

    return-void
.end method

.method constructor <init>(JJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/vrem/wifianalyzer/c/b/c/b;->b:J

    iput-wide p3, p0, Lcom/vrem/wifianalyzer/c/b/c/b;->c:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lcom/vrem/wifianalyzer/c/b/c/b;->b:J

    return-wide v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/vrem/wifianalyzer/c/b/c/b;->c:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

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
    check-cast p1, Lcom/vrem/wifianalyzer/c/b/c/b;

    new-instance v0, La/a/a/a/a/b;

    invoke-direct {v0}, La/a/a/a/a/b;-><init>()V

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/c/b/c/b;->a()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/vrem/wifianalyzer/c/b/c/b;->a()J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, La/a/a/a/a/b;->a(JJ)La/a/a/a/a/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/c/b/c/b;->b()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/vrem/wifianalyzer/c/b/c/b;->b()J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, La/a/a/a/a/b;->a(JJ)La/a/a/a/a/b;

    move-result-object v0

    invoke-virtual {v0}, La/a/a/a/a/b;->a()Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    new-instance v0, La/a/a/a/a/c;

    const/16 v1, 0x11

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, La/a/a/a/a/c;-><init>(II)V

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/c/b/c/b;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, La/a/a/a/a/c;->a(J)La/a/a/a/a/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/c/b/c/b;->b()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, La/a/a/a/a/c;->a(J)La/a/a/a/a/c;

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
