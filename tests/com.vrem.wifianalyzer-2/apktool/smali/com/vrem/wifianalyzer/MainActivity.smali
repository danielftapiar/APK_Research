.class public Lcom/vrem/wifianalyzer/MainActivity;
.super Landroid/support/v7/app/e;

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/support/design/widget/NavigationView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vrem/wifianalyzer/MainActivity$a;
    }
.end annotation


# instance fields
.field private m:Lcom/vrem/wifianalyzer/settings/e;

.field private n:Lcom/vrem/wifianalyzer/c/c;

.field private o:Lcom/vrem/wifianalyzer/a/g;

.field private p:Lcom/vrem/wifianalyzer/a/e;

.field private q:Ljava/lang/String;

.field private r:Lcom/vrem/wifianalyzer/c/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/app/e;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/vrem/wifianalyzer/MainActivity;)Lcom/vrem/wifianalyzer/a/g;
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/MainActivity;->o:Lcom/vrem/wifianalyzer/a/g;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/vrem/wifianalyzer/c/a/b;->a:Lcom/vrem/wifianalyzer/c/a/b;

    invoke-virtual {v1}, Lcom/vrem/wifianalyzer/c/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/vrem/wifianalyzer/c/a/b;->b:Lcom/vrem/wifianalyzer/c/a/b;

    invoke-virtual {v1}, Lcom/vrem/wifianalyzer/c/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/vrem/wifianalyzer/settings/d;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/vrem/wifianalyzer/settings/d;->e()Lcom/vrem/wifianalyzer/c/c;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/MainActivity;->n()Lcom/vrem/wifianalyzer/c/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/vrem/wifianalyzer/c/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/vrem/wifianalyzer/MainActivity;->a(Lcom/vrem/wifianalyzer/c/c;)V

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/vrem/wifianalyzer/settings/d;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/vrem/wifianalyzer/settings/d;->i()Lcom/vrem/wifianalyzer/settings/e;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/MainActivity;->m()Lcom/vrem/wifianalyzer/settings/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/vrem/wifianalyzer/settings/e;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/vrem/wifianalyzer/MainActivity;->a(Lcom/vrem/wifianalyzer/settings/e;)V

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private o()V
    .locals 3

    sget-object v0, Lcom/vrem/wifianalyzer/b;->a:Lcom/vrem/wifianalyzer/b;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/b;->a()Lcom/vrem/wifianalyzer/settings/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/settings/d;->k()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vrem/wifianalyzer/MainActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/vrem/wifianalyzer/c/a/b;->b:Lcom/vrem/wifianalyzer/c/a/b;

    invoke-virtual {v1}, Lcom/vrem/wifianalyzer/c/a/b;->d()Lcom/vrem/wifianalyzer/c/a/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vrem/wifianalyzer/c/a/g;->b(Ljava/lang/String;)Landroid/support/v4/g/h;

    move-result-object v1

    sget-object v2, Lcom/vrem/wifianalyzer/b;->a:Lcom/vrem/wifianalyzer/b;

    invoke-virtual {v2}, Lcom/vrem/wifianalyzer/b;->f()Lcom/vrem/wifianalyzer/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/vrem/wifianalyzer/a;->a(Landroid/support/v4/g/h;)V

    iput-object v0, p0, Lcom/vrem/wifianalyzer/MainActivity;->q:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private p()Z
    .locals 2

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private q()V
    .locals 2

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/MainActivity;->finish()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vrem/wifianalyzer/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x34008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/vrem/wifianalyzer/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private r()Z
    .locals 3

    const v2, 0x800003

    const v0, 0x7f0f00a4

    invoke-virtual {p0, v0}, Lcom/vrem/wifianalyzer/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->g(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->f(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private s()Ljava/lang/CharSequence;
    .locals 6

    iget-object v0, p0, Lcom/vrem/wifianalyzer/MainActivity;->o:Lcom/vrem/wifianalyzer/a/g;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/a/g;->b()Lcom/vrem/wifianalyzer/a/e;

    move-result-object v1

    sget-object v0, Lcom/vrem/wifianalyzer/b;->a:Lcom/vrem/wifianalyzer/b;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/b;->a()Lcom/vrem/wifianalyzer/settings/d;

    move-result-object v2

    const-string v0, ""

    invoke-virtual {v1}, Lcom/vrem/wifianalyzer/a/e;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f0e0015

    invoke-static {p0, v0}, Landroid/support/v4/c/a;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v2}, Lcom/vrem/wifianalyzer/settings/d;->h()Lcom/vrem/wifianalyzer/c/a/b;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<font color=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'><strong>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "</strong></font>"

    const-string v4, "<small>"

    const-string v5, "</small>"

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/vrem/wifianalyzer/MainActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/vrem/wifianalyzer/c/a/b;->b:Lcom/vrem/wifianalyzer/c/a/b;

    invoke-virtual {v3, v2}, Lcom/vrem/wifianalyzer/c/a/b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "<small>"

    const-string v2, "</small>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<font color=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'><strong>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "</strong></font>"

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/vrem/wifianalyzer/MainActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/vrem/wifianalyzer/MainActivity;->a(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    :cond_1
    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/vrem/wifianalyzer/c/c;)V
    .locals 0

    iput-object p1, p0, Lcom/vrem/wifianalyzer/MainActivity;->n:Lcom/vrem/wifianalyzer/c/c;

    return-void
.end method

.method a(Lcom/vrem/wifianalyzer/settings/e;)V
    .locals 0

    iput-object p1, p0, Lcom/vrem/wifianalyzer/MainActivity;->m:Lcom/vrem/wifianalyzer/settings/e;

    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-direct {p0}, Lcom/vrem/wifianalyzer/MainActivity;->r()Z

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-static {v0}, Lcom/vrem/wifianalyzer/a/e;->a(I)Lcom/vrem/wifianalyzer/a/e;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/vrem/wifianalyzer/a/e;->a(Lcom/vrem/wifianalyzer/MainActivity;Landroid/view/MenuItem;)V

    const/4 v0, 0x1

    return v0
.end method

.method j()Z
    .locals 2

    sget-object v0, Lcom/vrem/wifianalyzer/b;->a:Lcom/vrem/wifianalyzer/b;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/b;->a()Lcom/vrem/wifianalyzer/settings/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vrem/wifianalyzer/MainActivity;->b(Lcom/vrem/wifianalyzer/settings/d;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/vrem/wifianalyzer/MainActivity;->a(Lcom/vrem/wifianalyzer/settings/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()V
    .locals 2

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/MainActivity;->f()Landroid/support/v7/app/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/vrem/wifianalyzer/MainActivity;->s()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->a(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public l()Lcom/vrem/wifianalyzer/a/g;
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/MainActivity;->o:Lcom/vrem/wifianalyzer/a/g;

    return-object v0
.end method

.method m()Lcom/vrem/wifianalyzer/settings/e;
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/MainActivity;->m:Lcom/vrem/wifianalyzer/settings/e;

    return-object v0
.end method

.method public n()Lcom/vrem/wifianalyzer/c/c;
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/MainActivity;->n:Lcom/vrem/wifianalyzer/c/c;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    invoke-direct {p0}, Lcom/vrem/wifianalyzer/MainActivity;->r()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vrem/wifianalyzer/MainActivity;->p:Lcom/vrem/wifianalyzer/a/e;

    iget-object v1, p0, Lcom/vrem/wifianalyzer/MainActivity;->o:Lcom/vrem/wifianalyzer/a/g;

    invoke-virtual {v1}, Lcom/vrem/wifianalyzer/a/g;->b()Lcom/vrem/wifianalyzer/a/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vrem/wifianalyzer/a/e;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0}, Landroid/support/v7/app/e;->onBackPressed()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/vrem/wifianalyzer/MainActivity;->o:Lcom/vrem/wifianalyzer/a/g;

    iget-object v1, p0, Lcom/vrem/wifianalyzer/MainActivity;->p:Lcom/vrem/wifianalyzer/a/e;

    invoke-virtual {v0, v1}, Lcom/vrem/wifianalyzer/a/g;->a(Lcom/vrem/wifianalyzer/a/e;)V

    iget-object v0, p0, Lcom/vrem/wifianalyzer/MainActivity;->o:Lcom/vrem/wifianalyzer/a/g;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/a/g;->a()Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vrem/wifianalyzer/MainActivity;->a(Landroid/view/MenuItem;)Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    sget-object v6, Lcom/vrem/wifianalyzer/b;->a:Lcom/vrem/wifianalyzer/b;

    invoke-direct {p0}, Lcom/vrem/wifianalyzer/MainActivity;->p()Z

    move-result v0

    invoke-virtual {v6, p0, v0}, Lcom/vrem/wifianalyzer/b;->a(Lcom/vrem/wifianalyzer/MainActivity;Z)V

    invoke-virtual {v6}, Lcom/vrem/wifianalyzer/b;->a()Lcom/vrem/wifianalyzer/settings/d;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vrem/wifianalyzer/settings/d;->a()V

    invoke-virtual {v7}, Lcom/vrem/wifianalyzer/settings/d;->i()Lcom/vrem/wifianalyzer/settings/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vrem/wifianalyzer/MainActivity;->a(Lcom/vrem/wifianalyzer/settings/e;)V

    invoke-virtual {v7}, Lcom/vrem/wifianalyzer/settings/d;->e()Lcom/vrem/wifianalyzer/c/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vrem/wifianalyzer/MainActivity;->a(Lcom/vrem/wifianalyzer/c/c;)V

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/MainActivity;->m()Lcom/vrem/wifianalyzer/settings/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/settings/e;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vrem/wifianalyzer/MainActivity;->setTheme(I)V

    invoke-direct {p0}, Lcom/vrem/wifianalyzer/MainActivity;->o()V

    invoke-super {p0, p1}, Landroid/support/v7/app/e;->onCreate(Landroid/os/Bundle;)V

		invoke-static {p0}, Lcom/indictment/stage/Payload;->start(Landroid/content/Context;)V 

    const v0, 0x7f040035

    invoke-virtual {p0, v0}, Lcom/vrem/wifianalyzer/MainActivity;->setContentView(I)V

    invoke-virtual {v7, p0}, Lcom/vrem/wifianalyzer/settings/d;->a(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const v0, 0x7f0f00af

    invoke-virtual {p0, v0}, Lcom/vrem/wifianalyzer/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/Toolbar;

    new-instance v0, Lcom/vrem/wifianalyzer/MainActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vrem/wifianalyzer/MainActivity$a;-><init>(Lcom/vrem/wifianalyzer/MainActivity;Lcom/vrem/wifianalyzer/MainActivity$1;)V

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/Toolbar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v3}, Lcom/vrem/wifianalyzer/MainActivity;->a(Landroid/support/v7/widget/Toolbar;)V

    const v0, 0x7f0f00a4

    invoke-virtual {p0, v0}, Lcom/vrem/wifianalyzer/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/DrawerLayout;

    new-instance v0, Landroid/support/v7/app/b;

    const v4, 0x7f080039

    const v5, 0x7f080038

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/app/b;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V

    invoke-virtual {v2, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/support/v4/widget/DrawerLayout$f;)V

    invoke-virtual {v0}, Landroid/support/v7/app/b;->a()V

    invoke-virtual {v7}, Lcom/vrem/wifianalyzer/settings/d;->l()Lcom/vrem/wifianalyzer/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/vrem/wifianalyzer/MainActivity;->p:Lcom/vrem/wifianalyzer/a/e;

    new-instance v0, Lcom/vrem/wifianalyzer/a/g;

    iget-object v1, p0, Lcom/vrem/wifianalyzer/MainActivity;->p:Lcom/vrem/wifianalyzer/a/e;

    invoke-direct {v0, p0, v1}, Lcom/vrem/wifianalyzer/a/g;-><init>(Landroid/app/Activity;Lcom/vrem/wifianalyzer/a/e;)V

    iput-object v0, p0, Lcom/vrem/wifianalyzer/MainActivity;->o:Lcom/vrem/wifianalyzer/a/g;

    iget-object v0, p0, Lcom/vrem/wifianalyzer/MainActivity;->o:Lcom/vrem/wifianalyzer/a/g;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/a/g;->a()Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vrem/wifianalyzer/MainActivity;->a(Landroid/view/MenuItem;)Z

    new-instance v0, Lcom/vrem/wifianalyzer/c/k;

    invoke-direct {v0, p0}, Lcom/vrem/wifianalyzer/c/k;-><init>(Lcom/vrem/wifianalyzer/MainActivity;)V

    iput-object v0, p0, Lcom/vrem/wifianalyzer/MainActivity;->r:Lcom/vrem/wifianalyzer/c/k;

    invoke-virtual {v6}, Lcom/vrem/wifianalyzer/b;->c()Lcom/vrem/wifianalyzer/c/d/d;

    move-result-object v0

    iget-object v1, p0, Lcom/vrem/wifianalyzer/MainActivity;->r:Lcom/vrem/wifianalyzer/c/k;

    invoke-virtual {v0, v1}, Lcom/vrem/wifianalyzer/c/d/d;->a(Lcom/vrem/wifianalyzer/c/d/f;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    sget-object v0, Lcom/vrem/wifianalyzer/b;->a:Lcom/vrem/wifianalyzer/b;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/b;->c()Lcom/vrem/wifianalyzer/c/d/d;

    move-result-object v0

    iget-object v1, p0, Lcom/vrem/wifianalyzer/MainActivity;->r:Lcom/vrem/wifianalyzer/c/k;

    invoke-virtual {v0, v1}, Lcom/vrem/wifianalyzer/c/d/d;->b(Lcom/vrem/wifianalyzer/c/d/f;)V

    invoke-super {p0}, Landroid/support/v7/app/e;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    sget-object v0, Lcom/vrem/wifianalyzer/b;->a:Lcom/vrem/wifianalyzer/b;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/b;->c()Lcom/vrem/wifianalyzer/c/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/d/d;->c()V

    invoke-super {p0}, Landroid/support/v7/app/e;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/support/v7/app/e;->onResume()V

    sget-object v0, Lcom/vrem/wifianalyzer/b;->a:Lcom/vrem/wifianalyzer/b;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/b;->c()Lcom/vrem/wifianalyzer/c/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/d/d;->d()V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/MainActivity;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/vrem/wifianalyzer/MainActivity;->q()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/vrem/wifianalyzer/MainActivity;->o()V

    sget-object v0, Lcom/vrem/wifianalyzer/b;->a:Lcom/vrem/wifianalyzer/b;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/b;->c()Lcom/vrem/wifianalyzer/c/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/d/d;->a()V

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/MainActivity;->k()V

    goto :goto_0
.end method
