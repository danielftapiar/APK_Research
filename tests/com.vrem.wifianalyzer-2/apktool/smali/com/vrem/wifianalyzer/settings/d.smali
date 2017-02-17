.class public Lcom/vrem/wifianalyzer/settings/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/vrem/wifianalyzer/settings/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vrem/wifianalyzer/settings/d;->a:Landroid/content/Context;

    new-instance v0, Lcom/vrem/wifianalyzer/settings/c;

    invoke-direct {v0}, Lcom/vrem/wifianalyzer/settings/c;-><init>()V

    invoke-virtual {p0, v0}, Lcom/vrem/wifianalyzer/settings/d;->a(Lcom/vrem/wifianalyzer/settings/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/settings/d;->b:Lcom/vrem/wifianalyzer/settings/c;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/settings/c;->a()V

    return-void
.end method

.method public a(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/settings/d;->b:Lcom/vrem/wifianalyzer/settings/c;

    invoke-virtual {v0, p1}, Lcom/vrem/wifianalyzer/settings/c;->a(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public a(Lcom/vrem/wifianalyzer/settings/c;)V
    .locals 0

    iput-object p1, p0, Lcom/vrem/wifianalyzer/settings/d;->b:Lcom/vrem/wifianalyzer/settings/c;

    return-void
.end method

.method public b()I
    .locals 4

    iget-object v0, p0, Lcom/vrem/wifianalyzer/settings/d;->b:Lcom/vrem/wifianalyzer/settings/c;

    const v1, 0x7f08006c

    iget-object v2, p0, Lcom/vrem/wifianalyzer/settings/d;->b:Lcom/vrem/wifianalyzer/settings/c;

    const v3, 0x7f0d0007

    invoke-virtual {v2, v3}, Lcom/vrem/wifianalyzer/settings/c;->a(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vrem/wifianalyzer/settings/c;->c(II)I

    move-result v0

    return v0
.end method

.method public c()Lcom/vrem/wifianalyzer/c/c/e;
    .locals 3

    iget-object v0, p0, Lcom/vrem/wifianalyzer/settings/d;->b:Lcom/vrem/wifianalyzer/settings/c;

    const v1, 0x7f08006e

    sget-object v2, Lcom/vrem/wifianalyzer/c/c/e;->a:Lcom/vrem/wifianalyzer/c/c/e;

    invoke-virtual {v2}, Lcom/vrem/wifianalyzer/c/c/e;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vrem/wifianalyzer/settings/c;->b(II)I

    move-result v0

    invoke-static {v0}, Lcom/vrem/wifianalyzer/c/c/e;->a(I)Lcom/vrem/wifianalyzer/c/c/e;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/vrem/wifianalyzer/c/c/c;
    .locals 3

    iget-object v0, p0, Lcom/vrem/wifianalyzer/settings/d;->b:Lcom/vrem/wifianalyzer/settings/c;

    const v1, 0x7f080064

    sget-object v2, Lcom/vrem/wifianalyzer/c/c/c;->a:Lcom/vrem/wifianalyzer/c/c/c;

    invoke-virtual {v2}, Lcom/vrem/wifianalyzer/c/c/c;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vrem/wifianalyzer/settings/c;->b(II)I

    move-result v0

    invoke-static {v0}, Lcom/vrem/wifianalyzer/c/c/c;->a(I)Lcom/vrem/wifianalyzer/c/c/c;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/vrem/wifianalyzer/c/c;
    .locals 3

    iget-object v0, p0, Lcom/vrem/wifianalyzer/settings/d;->b:Lcom/vrem/wifianalyzer/settings/c;

    const v1, 0x7f080056

    sget-object v2, Lcom/vrem/wifianalyzer/c/c;->a:Lcom/vrem/wifianalyzer/c/c;

    invoke-virtual {v2}, Lcom/vrem/wifianalyzer/c/c;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vrem/wifianalyzer/settings/c;->b(II)I

    move-result v0

    invoke-static {v0}, Lcom/vrem/wifianalyzer/c/c;->a(I)Lcom/vrem/wifianalyzer/c/c;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/vrem/wifianalyzer/c/b/c/d;
    .locals 3

    iget-object v0, p0, Lcom/vrem/wifianalyzer/settings/d;->b:Lcom/vrem/wifianalyzer/settings/c;

    const v1, 0x7f08005e

    sget-object v2, Lcom/vrem/wifianalyzer/c/b/c/d;->c:Lcom/vrem/wifianalyzer/c/b/c/d;

    invoke-virtual {v2}, Lcom/vrem/wifianalyzer/c/b/c/d;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vrem/wifianalyzer/settings/c;->b(II)I

    move-result v0

    sget-object v1, Lcom/vrem/wifianalyzer/c/b/c/d;->c:Lcom/vrem/wifianalyzer/c/b/c/d;

    invoke-static {v0, v1}, Lcom/vrem/wifianalyzer/c/b/c/d;->a(ILcom/vrem/wifianalyzer/c/b/c/d;)Lcom/vrem/wifianalyzer/c/b/c/d;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/vrem/wifianalyzer/c/b/c/d;
    .locals 3

    iget-object v0, p0, Lcom/vrem/wifianalyzer/settings/d;->b:Lcom/vrem/wifianalyzer/settings/c;

    const v1, 0x7f080076

    sget-object v2, Lcom/vrem/wifianalyzer/c/b/c/d;->a:Lcom/vrem/wifianalyzer/c/b/c/d;

    invoke-virtual {v2}, Lcom/vrem/wifianalyzer/c/b/c/d;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vrem/wifianalyzer/settings/c;->b(II)I

    move-result v0

    sget-object v1, Lcom/vrem/wifianalyzer/c/b/c/d;->a:Lcom/vrem/wifianalyzer/c/b/c/d;

    invoke-static {v0, v1}, Lcom/vrem/wifianalyzer/c/b/c/d;->a(ILcom/vrem/wifianalyzer/c/b/c/d;)Lcom/vrem/wifianalyzer/c/b/c/d;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/vrem/wifianalyzer/c/a/b;
    .locals 3

    iget-object v0, p0, Lcom/vrem/wifianalyzer/settings/d;->b:Lcom/vrem/wifianalyzer/settings/c;

    const v1, 0x7f080079

    sget-object v2, Lcom/vrem/wifianalyzer/c/a/b;->a:Lcom/vrem/wifianalyzer/c/a/b;

    invoke-virtual {v2}, Lcom/vrem/wifianalyzer/c/a/b;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vrem/wifianalyzer/settings/c;->b(II)I

    move-result v0

    invoke-static {v0}, Lcom/vrem/wifianalyzer/c/a/b;->b(I)Lcom/vrem/wifianalyzer/c/a/b;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/vrem/wifianalyzer/settings/e;
    .locals 3

    iget-object v0, p0, Lcom/vrem/wifianalyzer/settings/d;->b:Lcom/vrem/wifianalyzer/settings/c;

    const v1, 0x7f080073

    sget-object v2, Lcom/vrem/wifianalyzer/settings/e;->a:Lcom/vrem/wifianalyzer/settings/e;

    invoke-virtual {v2}, Lcom/vrem/wifianalyzer/settings/e;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vrem/wifianalyzer/settings/c;->b(II)I

    move-result v0

    invoke-static {v0}, Lcom/vrem/wifianalyzer/settings/e;->a(I)Lcom/vrem/wifianalyzer/settings/e;

    move-result-object v0

    return-object v0
.end method

.method public j()V
    .locals 3

    iget-object v0, p0, Lcom/vrem/wifianalyzer/settings/d;->b:Lcom/vrem/wifianalyzer/settings/c;

    const v1, 0x7f080079

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/settings/d;->h()Lcom/vrem/wifianalyzer/c/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vrem/wifianalyzer/c/a/b;->b()Lcom/vrem/wifianalyzer/c/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vrem/wifianalyzer/c/a/b;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vrem/wifianalyzer/settings/c;->a(II)V

    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/vrem/wifianalyzer/settings/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/vrem/wifianalyzer/settings/CountryPreference;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vrem/wifianalyzer/settings/d;->b:Lcom/vrem/wifianalyzer/settings/c;

    const v2, 0x7f080061

    invoke-virtual {v1, v2, v0}, Lcom/vrem/wifianalyzer/settings/c;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Lcom/vrem/wifianalyzer/a/e;
    .locals 3

    iget-object v0, p0, Lcom/vrem/wifianalyzer/settings/d;->b:Lcom/vrem/wifianalyzer/settings/c;

    const v1, 0x7f080070

    sget-object v2, Lcom/vrem/wifianalyzer/a/e;->a:Lcom/vrem/wifianalyzer/a/e;

    invoke-virtual {v2}, Lcom/vrem/wifianalyzer/a/e;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vrem/wifianalyzer/settings/c;->b(II)I

    move-result v0

    invoke-static {v0}, Lcom/vrem/wifianalyzer/a/e;->a(I)Lcom/vrem/wifianalyzer/a/e;

    move-result-object v0

    return-object v0
.end method
