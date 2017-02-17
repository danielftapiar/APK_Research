.class Lcom/vrem/wifianalyzer/c/b/a/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vrem/wifianalyzer/c/b/a/d$b;,
        Lcom/vrem/wifianalyzer/c/b/a/d$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vrem/wifianalyzer/c/b/a/d$b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/vrem/wifianalyzer/a;

.field private final c:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/vrem/wifianalyzer/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vrem/wifianalyzer/c/b/a/d;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/vrem/wifianalyzer/c/b/a/d;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/vrem/wifianalyzer/c/b/a/d;->b:Lcom/vrem/wifianalyzer/a;

    invoke-direct {p0}, Lcom/vrem/wifianalyzer/c/b/a/d;->d()V

    return-void
.end method

.method static synthetic a(Lcom/vrem/wifianalyzer/c/b/a/d;)Lcom/vrem/wifianalyzer/a;
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/b/a/d;->b:Lcom/vrem/wifianalyzer/a;

    return-object v0
.end method

.method private a(Landroid/support/v4/g/h;)Lcom/vrem/wifianalyzer/c/b/a/d$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/g/h",
            "<",
            "Lcom/vrem/wifianalyzer/c/a/c;",
            "Lcom/vrem/wifianalyzer/c/a/c;",
            ">;)",
            "Lcom/vrem/wifianalyzer/c/b/a/d$b;"
        }
    .end annotation

    new-instance v1, Landroid/widget/Button;

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/b/a/d;->c:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, Landroid/support/v4/g/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/vrem/wifianalyzer/c/a/c;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/a/c;->a()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p1, Landroid/support/v4/g/h;->b:Ljava/lang/Object;

    check-cast v0, Lcom/vrem/wifianalyzer/c/a/c;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/a/c;->a()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/vrem/wifianalyzer/c/b/a/d;->e()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/vrem/wifianalyzer/c/b/a/d$a;

    invoke-direct {v0, p0, p1}, Lcom/vrem/wifianalyzer/c/b/a/d$a;-><init>(Lcom/vrem/wifianalyzer/c/b/a/d;Landroid/support/v4/g/h;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/vrem/wifianalyzer/c/b/a/d$b;

    invoke-direct {v0, p0, v1, p1}, Lcom/vrem/wifianalyzer/c/b/a/d$b;-><init>(Lcom/vrem/wifianalyzer/c/b/a/d;Landroid/widget/Button;Landroid/support/v4/g/h;)V

    return-object v0
.end method

.method private a(Landroid/widget/Button;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/b/a/d;->c:Landroid/content/Context;

    const v1, 0x7f0e0015

    invoke-static {v0, v1}, Landroid/support/v4/c/a;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/b/a/d;->c:Landroid/content/Context;

    const v1, 0x7f0e0016

    invoke-static {v0, v1}, Landroid/support/v4/c/a;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0
.end method

.method private c()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/vrem/wifianalyzer/c/b/a/d$b;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/vrem/wifianalyzer/b;->a:Lcom/vrem/wifianalyzer/b;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/b;->a()Lcom/vrem/wifianalyzer/settings/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/settings/d;->h()Lcom/vrem/wifianalyzer/c/a/b;

    move-result-object v2

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/settings/d;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/vrem/wifianalyzer/c/a/b;->d()Lcom/vrem/wifianalyzer/c/a/g;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/b/a/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vrem/wifianalyzer/c/b/a/d$b;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/b/a/d$b;->b()Landroid/support/v4/g/h;

    move-result-object v1

    invoke-virtual {v2}, Lcom/vrem/wifianalyzer/c/a/b;->c()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v1, v1, Landroid/support/v4/g/h;->a:Ljava/lang/Object;

    check-cast v1, Lcom/vrem/wifianalyzer/c/a/c;

    invoke-virtual {v1}, Lcom/vrem/wifianalyzer/c/a/c;->a()I

    move-result v1

    invoke-virtual {v4, v3, v1}, Lcom/vrem/wifianalyzer/c/a/g;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v5
.end method

.method private d()V
    .locals 3

    sget-object v0, Lcom/vrem/wifianalyzer/c/a/b;->b:Lcom/vrem/wifianalyzer/c/a/b;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/a/b;->d()Lcom/vrem/wifianalyzer/c/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/a/g;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/g/h;

    iget-object v2, p0, Lcom/vrem/wifianalyzer/c/b/a/d;->a:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/vrem/wifianalyzer/c/b/a/d;->a(Landroid/support/v4/g/h;)Lcom/vrem/wifianalyzer/c/b/a/d$b;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private e()Landroid/widget/LinearLayout$LayoutParams;
    .locals 5

    const/4 v4, -0x2

    const/4 v1, 0x5

    const/16 v0, -0x1e

    iget-object v2, p0, Lcom/vrem/wifianalyzer/c/b/a/d;->b:Lcom/vrem/wifianalyzer/a;

    invoke-virtual {v2}, Lcom/vrem/wifianalyzer/a;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xa

    const/16 v0, -0xa

    :cond_0
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const v3, 0x3f4ccccd    # 0.8f

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v1, v0, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    return-object v2
.end method


# virtual methods
.method a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/vrem/wifianalyzer/c/b/a/d$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/b/a/d;->a:Ljava/util/List;

    return-object v0
.end method

.method b()V
    .locals 9

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/vrem/wifianalyzer/c/b/a/d;->c()Ljava/util/List;

    move-result-object v1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/b/a/d;->b:Lcom/vrem/wifianalyzer/a;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/a;->b()Landroid/support/v4/g/h;

    move-result-object v2

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/b/a/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vrem/wifianalyzer/c/b/a/d$b;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/b/a/d$b;->a()Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/b/a/d$b;->b()Landroid/support/v4/g/h;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v5, v2}, Landroid/support/v4/g/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-direct {p0, v4, v0}, Lcom/vrem/wifianalyzer/c/b/a/d;->a(Landroid/widget/Button;Z)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setVisibility(I)V

    invoke-direct {p0, v4, v8}, Lcom/vrem/wifianalyzer/c/b/a/d;->a(Landroid/widget/Button;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method
