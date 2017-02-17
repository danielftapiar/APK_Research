.class public La/a/a/a/a/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static volatile a:La/a/a/a/a/g;


# instance fields
.field private final b:Ljava/lang/StringBuffer;

.field private final c:Ljava/lang/Object;

.field private final d:La/a/a/a/a/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, La/a/a/a/a/g;->a:La/a/a/a/a/g;

    sput-object v0, La/a/a/a/a/e;->a:La/a/a/a/a/g;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;La/a/a/a/a/g;Ljava/lang/StringBuffer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    invoke-static {}, La/a/a/a/a/e;->d()La/a/a/a/a/g;

    move-result-object p2

    :cond_0
    if-nez p3, :cond_1

    new-instance p3, Ljava/lang/StringBuffer;

    const/16 v0, 0x200

    invoke-direct {p3, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    :cond_1
    iput-object p3, p0, La/a/a/a/a/e;->b:Ljava/lang/StringBuffer;

    iput-object p2, p0, La/a/a/a/a/e;->d:La/a/a/a/a/g;

    iput-object p1, p0, La/a/a/a/a/e;->c:Ljava/lang/Object;

    invoke-virtual {p2, p3, p1}, La/a/a/a/a/g;->a(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    return-void
.end method

.method public static c(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, La/a/a/a/a/d;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d()La/a/a/a/a/g;
    .locals 1

    sget-object v0, La/a/a/a/a/e;->a:La/a/a/a/a/g;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;)La/a/a/a/a/e;
    .locals 3

    iget-object v0, p0, La/a/a/a/a/e;->d:La/a/a/a/a/g;

    iget-object v1, p0, La/a/a/a/a/e;->b:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, La/a/a/a/a/g;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public e()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, La/a/a/a/a/e;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public f()Ljava/lang/StringBuffer;
    .locals 1

    iget-object v0, p0, La/a/a/a/a/e;->b:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public g()La/a/a/a/a/g;
    .locals 1

    iget-object v0, p0, La/a/a/a/a/e;->d:La/a/a/a/a/g;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, La/a/a/a/a/e;->e()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, La/a/a/a/a/e;->f()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, La/a/a/a/a/e;->g()La/a/a/a/a/g;

    move-result-object v1

    invoke-virtual {v1}, La/a/a/a/a/g;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    invoke-virtual {p0}, La/a/a/a/a/e;->f()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, La/a/a/a/a/e;->d:La/a/a/a/a/g;

    invoke-virtual {p0}, La/a/a/a/a/e;->f()Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, La/a/a/a/a/e;->e()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, La/a/a/a/a/g;->b(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    goto :goto_0
.end method
