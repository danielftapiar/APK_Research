.class public Lcl/santander/smartphone/HomeLogin;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "HomeLogin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/santander/smartphone/HomeLogin$myButtonListener;
    }
.end annotation


# instance fields
.field sf:Lcom/actionbarsherlock/app/SherlockFragment;

.field sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field sfm:Landroid/support/v4/app/FragmentManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    return-void
.end method

.method private setTypefaces()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcl/santander/smartphone/HomeLogin;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06009d

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcl/santander/smartphone/Utils;->tf_black:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 45
    iget-object v0, p0, Lcl/santander/smartphone/HomeLogin;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06009e

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcl/santander/smartphone/Utils;->tf_normal:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 46
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 33
    iput-object p0, p0, Lcl/santander/smartphone/HomeLogin;->sf:Lcom/actionbarsherlock/app/SherlockFragment;

    .line 34
    invoke-virtual {p0}, Lcl/santander/smartphone/HomeLogin;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/smartphone/HomeLogin;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 35
    iget-object v1, p0, Lcl/santander/smartphone/HomeLogin;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/smartphone/HomeLogin;->sfm:Landroid/support/v4/app/FragmentManager;

    .line 37
    invoke-virtual {p0}, Lcl/santander/smartphone/HomeLogin;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v1

    const v2, 0x7f06009c

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 38
    .local v0, "b":Landroid/widget/LinearLayout;
    new-instance v1, Lcl/santander/smartphone/HomeLogin$myButtonListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcl/santander/smartphone/HomeLogin$myButtonListener;-><init>(Lcl/santander/smartphone/HomeLogin;Lcl/santander/smartphone/HomeLogin$myButtonListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    invoke-direct {p0}, Lcl/santander/smartphone/HomeLogin;->setTypefaces()V

    .line 41
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 26
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f030027

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method
