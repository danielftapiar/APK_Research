.class Landroid/support/v4/widget/DrawerLayout$a;
.super Landroid/support/v4/h/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/widget/DrawerLayout;

.field private final c:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/DrawerLayout;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout$a;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct {p0}, Landroid/support/v4/h/b;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout$a;->c:Landroid/graphics/Rect;

    return-void
.end method

.method private a(Landroid/support/v4/h/a/c;Landroid/support/v4/h/a/c;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$a;->c:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/support/v4/h/a/c;->a(Landroid/graphics/Rect;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/h/a/c;->b(Landroid/graphics/Rect;)V

    invoke-virtual {p2, v0}, Landroid/support/v4/h/a/c;->c(Landroid/graphics/Rect;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/h/a/c;->d(Landroid/graphics/Rect;)V

    invoke-virtual {p2}, Landroid/support/v4/h/a/c;->g()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/h/a/c;->e(Z)V

    invoke-virtual {p2}, Landroid/support/v4/h/a/c;->o()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/h/a/c;->a(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/support/v4/h/a/c;->p()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/h/a/c;->b(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/support/v4/h/a/c;->r()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/h/a/c;->c(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/support/v4/h/a/c;->l()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/h/a/c;->j(Z)V

    invoke-virtual {p2}, Landroid/support/v4/h/a/c;->j()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/h/a/c;->h(Z)V

    invoke-virtual {p2}, Landroid/support/v4/h/a/c;->e()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/h/a/c;->c(Z)V

    invoke-virtual {p2}, Landroid/support/v4/h/a/c;->f()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/h/a/c;->d(Z)V

    invoke-virtual {p2}, Landroid/support/v4/h/a/c;->h()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/h/a/c;->f(Z)V

    invoke-virtual {p2}, Landroid/support/v4/h/a/c;->i()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/h/a/c;->g(Z)V

    invoke-virtual {p2}, Landroid/support/v4/h/a/c;->k()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/h/a/c;->i(Z)V

    invoke-virtual {p2}, Landroid/support/v4/h/a/c;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/h/a/c;->a(I)V

    return-void
.end method

.method private a(Landroid/support/v4/h/a/c;Landroid/view/ViewGroup;)V
    .locals 4

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/widget/DrawerLayout;->l(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v2}, Landroid/support/v4/h/a/c;->b(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/support/v4/h/a/c;)V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->b:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/support/v4/h/b;->a(Landroid/view/View;Landroid/support/v4/h/a/c;)V

    :goto_0
    const-class v0, Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/h/a/c;->b(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v3}, Landroid/support/v4/h/a/c;->c(Z)V

    invoke-virtual {p2, v3}, Landroid/support/v4/h/a/c;->d(Z)V

    sget-object v0, Landroid/support/v4/h/a/c$a;->a:Landroid/support/v4/h/a/c$a;

    invoke-virtual {p2, v0}, Landroid/support/v4/h/a/c;->a(Landroid/support/v4/h/a/c$a;)Z

    sget-object v0, Landroid/support/v4/h/a/c$a;->b:Landroid/support/v4/h/a/c$a;

    invoke-virtual {p2, v0}, Landroid/support/v4/h/a/c;->a(Landroid/support/v4/h/a/c$a;)Z

    return-void

    :cond_0
    invoke-static {p2}, Landroid/support/v4/h/a/c;->a(Landroid/support/v4/h/a/c;)Landroid/support/v4/h/a/c;

    move-result-object v1

    invoke-super {p0, p1, v1}, Landroid/support/v4/h/b;->a(Landroid/view/View;Landroid/support/v4/h/a/c;)V

    invoke-virtual {p2, p1}, Landroid/support/v4/h/a/c;->a(Landroid/view/View;)V

    invoke-static {p1}, Landroid/support/v4/h/ae;->h(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v0

    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/support/v4/h/a/c;->c(Landroid/view/View;)V

    :cond_1
    invoke-direct {p0, p2, v1}, Landroid/support/v4/widget/DrawerLayout$a;->a(Landroid/support/v4/h/a/c;Landroid/support/v4/h/a/c;)V

    invoke-virtual {v1}, Landroid/support/v4/h/a/c;->s()V

    check-cast p1, Landroid/view/ViewGroup;

    invoke-direct {p0, p2, p1}, Landroid/support/v4/widget/DrawerLayout$a;->a(Landroid/support/v4/h/a/c;Landroid/view/ViewGroup;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v4/h/b;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->b:Z

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/support/v4/widget/DrawerLayout;->l(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/h/b;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$a;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1}, Landroid/support/v4/widget/DrawerLayout;->c()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout$a;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/DrawerLayout;->e(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout$a;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/DrawerLayout;->b(I)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v4/h/b;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_0
.end method
