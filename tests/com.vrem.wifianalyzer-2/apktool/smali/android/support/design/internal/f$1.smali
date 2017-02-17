.class Landroid/support/design/internal/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/h/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/internal/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/internal/f;


# direct methods
.method constructor <init>(Landroid/support/design/internal/f;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/internal/f$1;->a:Landroid/support/design/internal/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/support/v4/h/bb;)Landroid/support/v4/h/bb;
    .locals 5

    iget-object v0, p0, Landroid/support/design/internal/f$1;->a:Landroid/support/design/internal/f;

    iget-object v0, v0, Landroid/support/design/internal/f;->b:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/internal/f$1;->a:Landroid/support/design/internal/f;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Landroid/support/design/internal/f;->b:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Landroid/support/design/internal/f$1;->a:Landroid/support/design/internal/f;

    iget-object v0, v0, Landroid/support/design/internal/f;->b:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/support/v4/h/bb;->a()I

    move-result v1

    invoke-virtual {p2}, Landroid/support/v4/h/bb;->b()I

    move-result v2

    invoke-virtual {p2}, Landroid/support/v4/h/bb;->c()I

    move-result v3

    invoke-virtual {p2}, Landroid/support/v4/h/bb;->d()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Landroid/support/design/internal/f$1;->a:Landroid/support/design/internal/f;

    invoke-virtual {v0, p2}, Landroid/support/design/internal/f;->a(Landroid/support/v4/h/bb;)V

    iget-object v1, p0, Landroid/support/design/internal/f$1;->a:Landroid/support/design/internal/f;

    invoke-virtual {p2}, Landroid/support/v4/h/bb;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/internal/f$1;->a:Landroid/support/design/internal/f;

    iget-object v0, v0, Landroid/support/design/internal/f;->a:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/design/internal/f;->setWillNotDraw(Z)V

    iget-object v0, p0, Landroid/support/design/internal/f$1;->a:Landroid/support/design/internal/f;

    invoke-static {v0}, Landroid/support/v4/h/ae;->c(Landroid/view/View;)V

    invoke-virtual {p2}, Landroid/support/v4/h/bb;->g()Landroid/support/v4/h/bb;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
