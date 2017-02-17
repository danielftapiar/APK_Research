.class final La/a/a/a/a/g$f;
.super La/a/a/a/a/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/a/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "f"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, La/a/a/a/a/g;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, La/a/a/a/a/g$f;->b(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, La/a/a/a/a/g$f;->c(Z)V

    return-void
.end method
