.class final Lcl/birdie/transantiagomaster/dialogos/FavoritosFragment$1;
.super Landroid/widget/ArrayAdapter;
.source "FavoritosFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/dialogos/FavoritosFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcl/birdie/transantiagomaster/newobjetos/IFavorito;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$cl$birdie$transantiagomaster$newobjetos$IFavorito$TipoFavorito:[I


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/dialogos/FavoritosFragment;


# direct methods
.method private static synthetic $SWITCH_TABLE$cl$birdie$transantiagomaster$newobjetos$IFavorito$TipoFavorito()[I
    .locals 3

    .prologue
    .line 57
    sget-object v0, Lcl/birdie/transantiagomaster/dialogos/FavoritosFragment$1;->$SWITCH_TABLE$cl$birdie$transantiagomaster$newobjetos$IFavorito$TipoFavorito:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;->values()[Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;->TIPO_LUGAR:Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;->TIPO_PARADERO:Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;->TIPO_RECORRIDO:Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcl/birdie/transantiagomaster/dialogos/FavoritosFragment$1;->$SWITCH_TABLE$cl$birdie$transantiagomaster$newobjetos$IFavorito$TipoFavorito:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method constructor <init>(Lcl/birdie/transantiagomaster/dialogos/FavoritosFragment;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    .local p3, "$anonymous2":Ljava/util/List;, "Ljava/util/List<Lcl/birdie/transantiagomaster/newobjetos/IFavorito;>;"
    iput-object p1, p0, Lcl/birdie/transantiagomaster/dialogos/FavoritosFragment$1;->this$0:Lcl/birdie/transantiagomaster/dialogos/FavoritosFragment;

    .line 57
    const v0, 0x7f030037

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 61
    .line 63
    move-object v2, p2

    .local v2, "v":Landroid/view/View;
    if-nez p2, :cond_1

    .line 65
    iget-object v3, p0, Lcl/birdie/transantiagomaster/dialogos/FavoritosFragment$1;->this$0:Lcl/birdie/transantiagomaster/dialogos/FavoritosFragment;

    invoke-virtual {v3}, Lcl/birdie/transantiagomaster/dialogos/FavoritosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 64
    const v4, 0x7f030037

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 67
    new-instance v1, Lcl/birdie/transantiagomaster/dialogos/FavoritosFragment$ViewHolder;

    invoke-direct {v1}, Lcl/birdie/transantiagomaster/dialogos/FavoritosFragment$ViewHolder;-><init>()V

    .line 68
    .local v1, "holder":Lcl/birdie/transantiagomaster/dialogos/FavoritosFragment$ViewHolder;
    const v3, 0x7f0800bf

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcl/birdie/transantiagomaster/dialogos/FavoritosFragment$ViewHolder;->type:Landroid/widget/ImageView;

    .line 69
    const v3, 0x7f0800c0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcl/birdie/transantiagomaster/dialogos/FavoritosFragment$ViewHolder;->name:Landroid/widget/TextView;

    .line 70
    const v3, 0x7f0800c1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcl/birdie/transantiagomaster/dialogos/FavoritosFragment$ViewHolder;->description:Landroid/widget/TextView;

    .line 71
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 77
    :goto_0
    sget-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v3, v3, Lcl/birdie/transantiagomaster/PantallaDatos;->favoritos:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/birdie/transantiagomaster/newobjetos/IFavorito;

    .line 78
    .local v0, "f":Lcl/birdie/transantiagomaster/newobjetos/IFavorito;
    if-eqz v0, :cond_0

    .line 79
    iget-object v3, v1, Lcl/birdie/transantiagomaster/dialogos/FavoritosFragment$ViewHolder;->name:Landroid/widget/TextView;

    invoke-interface {v0}, Lcl/birdie/transantiagomaster/newobjetos/IFavorito;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v3, v1, Lcl/birdie/transantiagomaster/dialogos/FavoritosFragment$ViewHolder;->description:Landroid/widget/TextView;

    invoke-interface {v0}, Lcl/birdie/transantiagomaster/newobjetos/IFavorito;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    invoke-static {}, Lcl/birdie/transantiagomaster/dialogos/FavoritosFragment$1;->$SWITCH_TABLE$cl$birdie$transantiagomaster$newobjetos$IFavorito$TipoFavorito()[I

    move-result-object v3

    invoke-interface {v0}, Lcl/birdie/transantiagomaster/newobjetos/IFavorito;->getTipoFavorito()Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;

    move-result-object v4

    invoke-virtual {v4}, Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 87
    :cond_0
    :goto_1
    :pswitch_0
    return-object v2

    .line 74
    .end local v0    # "f":Lcl/birdie/transantiagomaster/newobjetos/IFavorito;
    .end local v1    # "holder":Lcl/birdie/transantiagomaster/dialogos/FavoritosFragment$ViewHolder;
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcl/birdie/transantiagomaster/dialogos/FavoritosFragment$ViewHolder;

    .restart local v1    # "holder":Lcl/birdie/transantiagomaster/dialogos/FavoritosFragment$ViewHolder;
    goto :goto_0

    .line 83
    .restart local v0    # "f":Lcl/birdie/transantiagomaster/newobjetos/IFavorito;
    :pswitch_1
    iget-object v3, v1, Lcl/birdie/transantiagomaster/dialogos/FavoritosFragment$ViewHolder;->type:Landroid/widget/ImageView;

    iget-object v4, p0, Lcl/birdie/transantiagomaster/dialogos/FavoritosFragment$1;->this$0:Lcl/birdie/transantiagomaster/dialogos/FavoritosFragment;

    invoke-virtual {v4}, Lcl/birdie/transantiagomaster/dialogos/FavoritosFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020144

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 86
    :pswitch_2
    iget-object v3, v1, Lcl/birdie/transantiagomaster/dialogos/FavoritosFragment$ViewHolder;->type:Landroid/widget/ImageView;

    iget-object v4, p0, Lcl/birdie/transantiagomaster/dialogos/FavoritosFragment$1;->this$0:Lcl/birdie/transantiagomaster/dialogos/FavoritosFragment;

    invoke-virtual {v4}, Lcl/birdie/transantiagomaster/dialogos/FavoritosFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020143

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
