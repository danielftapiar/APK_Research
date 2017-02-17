.class final La/a/a/a/a/g$g;
.super La/a/a/a/a/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/a/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "g"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, La/a/a/a/a/g;-><init>()V

    invoke-virtual {p0, v0}, La/a/a/a/a/g$g;->a(Z)V

    invoke-virtual {p0, v0}, La/a/a/a/a/g$g;->c(Z)V

    invoke-virtual {p0, v0}, La/a/a/a/a/g$g;->d(Z)V

    const-string v0, ""

    invoke-virtual {p0, v0}, La/a/a/a/a/g$g;->c(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p0, v0}, La/a/a/a/a/g$g;->d(Ljava/lang/String;)V

    return-void
.end method
