.class Lcom/vrem/wifianalyzer/c/i;
.super Landroid/widget/ArrayAdapter;

# interfaces
.implements Lcom/vrem/wifianalyzer/c/d/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/vrem/wifianalyzer/c/a/c;",
        ">;",
        "Lcom/vrem/wifianalyzer/c/d/f;"
    }
.end annotation


# instance fields
.field private final a:Landroid/widget/TextView;

.field private b:Lcom/vrem/wifianalyzer/c/c/b;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 2

    const v0, 0x7f040024

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p2, p0, Lcom/vrem/wifianalyzer/c/i;->a:Landroid/widget/TextView;

    new-instance v0, Lcom/vrem/wifianalyzer/c/c/b;

    invoke-direct {v0}, Lcom/vrem/wifianalyzer/c/c/b;-><init>()V

    invoke-virtual {p0, v0}, Lcom/vrem/wifianalyzer/c/i;->a(Lcom/vrem/wifianalyzer/c/c/b;)V

    return-void
.end method

.method private a(Lcom/vrem/wifianalyzer/c/a/b;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vrem/wifianalyzer/c/a/b;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/vrem/wifianalyzer/c/a/c;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/vrem/wifianalyzer/b;->a:Lcom/vrem/wifianalyzer/b;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/b;->a()Lcom/vrem/wifianalyzer/settings/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/settings/d;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/vrem/wifianalyzer/c/a/b;->d()Lcom/vrem/wifianalyzer/c/a/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vrem/wifianalyzer/c/a/g;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/c/i;->clear()V

    invoke-virtual {p0, v0}, Lcom/vrem/wifianalyzer/c/i;->addAll(Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method a(Lcom/vrem/wifianalyzer/c/a/b;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vrem/wifianalyzer/c/a/b;",
            "Ljava/util/List",
            "<",
            "Lcom/vrem/wifianalyzer/c/a/c;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/i;->b:Lcom/vrem/wifianalyzer/c/c/b;

    invoke-virtual {v0, p2}, Lcom/vrem/wifianalyzer/c/c/b;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vrem/wifianalyzer/c/c/a;

    const/16 v4, 0xa

    if-le v1, v4, :cond_1

    const-string v0, "..."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/i;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/i;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/c/i;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e004a

    invoke-static {v1, v2}, Landroid/support/v4/c/a;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    return-void

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/c/a;->a()Lcom/vrem/wifianalyzer/c/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/a/c;->a()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/c/i;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7f08002d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/vrem/wifianalyzer/c/a/b;->a:Lcom/vrem/wifianalyzer/c/a/b;

    invoke-virtual {v2, p1}, Lcom/vrem/wifianalyzer/c/a/b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const v2, 0x7f08002c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/vrem/wifianalyzer/c/a/b;->b:Lcom/vrem/wifianalyzer/c/a/b;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/a/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/i;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/i;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/c/i;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0027

    invoke-static {v1, v2}, Landroid/support/v4/c/a;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method

.method a(Lcom/vrem/wifianalyzer/c/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/vrem/wifianalyzer/c/i;->b:Lcom/vrem/wifianalyzer/c/c/b;

    return-void
.end method

.method public a(Lcom/vrem/wifianalyzer/c/c/i;)V
    .locals 4

    sget-object v0, Lcom/vrem/wifianalyzer/b;->a:Lcom/vrem/wifianalyzer/b;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/b;->a()Lcom/vrem/wifianalyzer/settings/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/settings/d;->h()Lcom/vrem/wifianalyzer/c/a/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vrem/wifianalyzer/c/i;->a(Lcom/vrem/wifianalyzer/c/a/b;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/vrem/wifianalyzer/c/i;->b:Lcom/vrem/wifianalyzer/c/c/b;

    sget-object v3, Lcom/vrem/wifianalyzer/c/c/e;->a:Lcom/vrem/wifianalyzer/c/c/e;

    invoke-virtual {p1, v0, v3}, Lcom/vrem/wifianalyzer/c/c/i;->a(Lcom/vrem/wifianalyzer/c/a/b;Lcom/vrem/wifianalyzer/c/c/e;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vrem/wifianalyzer/c/c/b;->a(Ljava/util/List;)V

    invoke-virtual {p0, v0, v1}, Lcom/vrem/wifianalyzer/c/i;->a(Lcom/vrem/wifianalyzer/c/a/b;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/c/i;->notifyDataSetChanged()V

    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-nez p2, :cond_0

    sget-object v0, Lcom/vrem/wifianalyzer/b;->a:Lcom/vrem/wifianalyzer/b;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/b;->e()Lcom/vrem/wifianalyzer/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040024

    invoke-virtual {v0, v1, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/vrem/wifianalyzer/c/i;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vrem/wifianalyzer/c/a/c;

    if-nez v0, :cond_1

    :goto_0
    return-object p2

    :cond_1
    const v1, 0x7f0f0093

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "%d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/a/c;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0f0094

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "%d"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/vrem/wifianalyzer/c/i;->b:Lcom/vrem/wifianalyzer/c/c/b;

    invoke-virtual {v5, v0}, Lcom/vrem/wifianalyzer/c/c/b;->a(Lcom/vrem/wifianalyzer/c/a/c;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/vrem/wifianalyzer/c/i;->b:Lcom/vrem/wifianalyzer/c/c/b;

    invoke-virtual {v1, v0}, Lcom/vrem/wifianalyzer/c/c/b;->b(Lcom/vrem/wifianalyzer/c/a/c;)Lcom/vrem/wifianalyzer/c/c/f;

    move-result-object v0

    invoke-static {v0}, Lcom/vrem/wifianalyzer/c/c/f;->a(Lcom/vrem/wifianalyzer/c/c/f;)Lcom/vrem/wifianalyzer/c/c/f;

    move-result-object v1

    const v0, 0x7f0f0092

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    invoke-static {}, Lcom/vrem/wifianalyzer/c/c/f;->values()[Lcom/vrem/wifianalyzer/c/c/f;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/RatingBar;->setMax(I)V

    invoke-virtual {v0, v2}, Landroid/widget/RatingBar;->setNumStars(I)V

    invoke-virtual {v1}, Lcom/vrem/wifianalyzer/c/c/f;->ordinal()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/RatingBar;->setRating(F)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_2

    invoke-virtual {v0}, Landroid/widget/RatingBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/c/i;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e004a

    invoke-static {v1, v2}, Landroid/support/v4/c/a;->c(Landroid/content/Context;I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/c/i;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Lcom/vrem/wifianalyzer/c/c/f;->a()I

    move-result v1

    invoke-static {v2, v1}, Landroid/support/v4/c/a;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_0
.end method
