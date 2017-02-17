.class Landroid/support/v7/app/k;
.super Landroid/support/v7/app/j;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/k$b;,
        Landroid/support/v7/app/k$a;
    }
.end annotation


# instance fields
.field private t:I

.field private u:Z

.field private v:Z

.field private w:Landroid/support/v7/app/k$b;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/f;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/app/j;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/f;)V

    const/16 v0, -0x64

    iput v0, p0, Landroid/support/v7/app/k;->t:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/k;->v:Z

    return-void
.end method

.method private h(I)Z
    .locals 5

    iget-object v0, p0, Landroid/support/v7/app/k;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v0, 0x30

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/16 v0, 0x20

    :goto_0
    if-eq v3, v0, :cond_2

    invoke-direct {p0}, Landroid/support/v7/app/k;->z()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/k;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_0
    const/16 v0, 0x10

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v4, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, -0x31

    or-int/2addr v0, v4

    iput v0, v3, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    invoke-static {v1}, Landroid/support/v7/app/p;->a(Landroid/content/res/Resources;)Z

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private x()I
    .locals 2

    iget v0, p0, Landroid/support/v7/app/k;->t:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/app/k;->t:I

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/support/v7/app/k;->k()I

    move-result v0

    goto :goto_0
.end method

.method private y()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/k;->w:Landroid/support/v7/app/k$b;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/app/k$b;

    iget-object v1, p0, Landroid/support/v7/app/k;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v7/app/s;->a(Landroid/content/Context;)Landroid/support/v7/app/s;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/k$b;-><init>(Landroid/support/v7/app/k;Landroid/support/v7/app/s;)V

    iput-object v0, p0, Landroid/support/v7/app/k;->w:Landroid/support/v7/app/k$b;

    :cond_0
    return-void
.end method

.method private z()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Landroid/support/v7/app/k;->u:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/app/k;->a:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/app/k;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    :try_start_0
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Landroid/support/v7/app/k;->a:Landroid/content/Context;

    iget-object v5, p0, Landroid/support/v7/app/k;->a:Landroid/content/Context;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ActivityInfo;->configChanges:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v2, v2, 0x200

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AppCompatDelegate"

    const-string v3, "Exception while getting ActivityInfo"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method a(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .locals 1

    new-instance v0, Landroid/support/v7/app/k$a;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/k$a;-><init>(Landroid/support/v7/app/k;Landroid/view/Window$Callback;)V

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    const/16 v1, -0x64

    invoke-super {p0, p1}, Landroid/support/v7/app/j;->a(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/support/v7/app/k;->t:I

    if-ne v0, v1, :cond_0

    const-string v0, "appcompat:local_night_mode"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/app/k;->t:I

    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    invoke-super {p0}, Landroid/support/v7/app/j;->c()V

    invoke-virtual {p0}, Landroid/support/v7/app/k;->j()Z

    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/app/j;->c(Landroid/os/Bundle;)V

    iget v0, p0, Landroid/support/v7/app/k;->t:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_0

    const-string v0, "appcompat:local_night_mode"

    iget v1, p0, Landroid/support/v7/app/k;->t:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method d(I)I
    .locals 1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return p1

    :sswitch_0
    invoke-direct {p0}, Landroid/support/v7/app/k;->y()V

    iget-object v0, p0, Landroid/support/v7/app/k;->w:Landroid/support/v7/app/k$b;

    invoke-virtual {v0}, Landroid/support/v7/app/k$b;->a()I

    move-result p1

    goto :goto_0

    :sswitch_1
    const/4 p1, -0x1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x64 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method public d()V
    .locals 1

    invoke-super {p0}, Landroid/support/v7/app/j;->d()V

    iget-object v0, p0, Landroid/support/v7/app/k;->w:Landroid/support/v7/app/k$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/k;->w:Landroid/support/v7/app/k$b;

    invoke-virtual {v0}, Landroid/support/v7/app/k$b;->d()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    invoke-super {p0}, Landroid/support/v7/app/j;->g()V

    iget-object v0, p0, Landroid/support/v7/app/k;->w:Landroid/support/v7/app/k$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/k;->w:Landroid/support/v7/app/k$b;

    invoke-virtual {v0}, Landroid/support/v7/app/k$b;->d()V

    :cond_0
    return-void
.end method

.method public j()Z
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/support/v7/app/k;->x()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/app/k;->d(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-direct {p0, v2}, Landroid/support/v7/app/k;->h(I)Z

    move-result v0

    :cond_0
    if-nez v1, :cond_1

    invoke-direct {p0}, Landroid/support/v7/app/k;->y()V

    iget-object v1, p0, Landroid/support/v7/app/k;->w:Landroid/support/v7/app/k$b;

    invoke-virtual {v1}, Landroid/support/v7/app/k$b;->c()V

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/app/k;->u:Z

    return v0
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/app/k;->v:Z

    return v0
.end method
