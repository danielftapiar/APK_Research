.class public abstract Lnet/veritran/vtuserapplication/utils/PreferenceFragment;
.super Landroid/support/v4/app/Fragment;
.source "PreferenceFragment.java"


# static fields
.field private static final FIRST_REQUEST_CODE:I = 0x64

.field private static final HC_HORIZONTAL_PADDING:F = 16.0f

.field private static final MSG_BIND_PREFERENCES:I = 0x1

.field private static final MSG_REQUEST_FOCUS:I = 0x2

.field private static final PREFERENCES_TAG:Ljava/lang/String; = "android:preferences"


# instance fields
.field private final mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mHavePrefs:Z

.field private mInitDone:Z

.field private mList:Landroid/widget/ListView;

.field private mPreferenceManager:Landroid/preference/PreferenceManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 38
    new-instance v0, Lnet/veritran/vtuserapplication/utils/PreferenceFragment$1;

    invoke-direct {v0, p0}, Lnet/veritran/vtuserapplication/utils/PreferenceFragment$1;-><init>(Lnet/veritran/vtuserapplication/utils/PreferenceFragment;)V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/utils/PreferenceFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lnet/veritran/vtuserapplication/utils/PreferenceFragment;)V
    .locals 0
    .param p0, "x0"    # Lnet/veritran/vtuserapplication/utils/PreferenceFragment;

    .prologue
    .line 30
    invoke-direct {p0}, Lnet/veritran/vtuserapplication/utils/PreferenceFragment;->bindPreferences()V

    return-void
.end method

.method static synthetic access$100(Lnet/veritran/vtuserapplication/utils/PreferenceFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lnet/veritran/vtuserapplication/utils/PreferenceFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lnet/veritran/vtuserapplication/utils/PreferenceFragment;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method private bindPreferences()V
    .locals 2

    .prologue
    .line 225
    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 226
    .local v0, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    .line 229
    :cond_0
    return-void
.end method

.method private ensureList()V
    .locals 4

    .prologue
    .line 237
    iget-object v2, p0, Lnet/veritran/vtuserapplication/utils/PreferenceFragment;->mList:Landroid/widget/ListView;

    if-eqz v2, :cond_0

    .line 253
    :goto_0
    return-void

    .line 240
    :cond_0
    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/PreferenceFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 241
    .local v1, "root":Landroid/view/View;
    if-nez v1, :cond_1

    .line 242
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Content view not yet created"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 244
    :cond_1
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 245
    .local v0, "rawListView":Landroid/view/View;
    instance-of v2, v0, Landroid/widget/ListView;

    if-nez v2, :cond_2

    .line 246
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Content has view with id attribute \'android.R.id.list\' that is not a ListView class"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 248
    :cond_2
    check-cast v0, Landroid/widget/ListView;

    .end local v0    # "rawListView":Landroid/view/View;
    iput-object v0, p0, Lnet/veritran/vtuserapplication/utils/PreferenceFragment;->mList:Landroid/widget/ListView;

    .line 249
    iget-object v2, p0, Lnet/veritran/vtuserapplication/utils/PreferenceFragment;->mList:Landroid/widget/ListView;

    if-nez v2, :cond_3

    .line 250
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 252
    :cond_3
    iget-object v2, p0, Lnet/veritran/vtuserapplication/utils/PreferenceFragment;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private postBindPreferences()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 219
    iget-object v0, p0, Lnet/veritran/vtuserapplication/utils/PreferenceFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lnet/veritran/vtuserapplication/utils/PreferenceFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 222
    :cond_0
    return-void
.end method

.method private requirePreferenceManager()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lnet/veritran/vtuserapplication/utils/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This should be called after super.onCreate."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_0
    return-void
.end method


# virtual methods
.method public addPreferencesFromIntent(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 182
    invoke-direct {p0}, Lnet/veritran/vtuserapplication/utils/PreferenceFragment;->requirePreferenceManager()V

    .line 184
    :try_start_0
    const-class v3, Landroid/preference/PreferenceManager;

    const-string v4, "inflateFromIntent"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Intent;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/preference/PreferenceScreen;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 186
    .local v1, "m":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lnet/veritran/vtuserapplication/utils/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    .line 187
    .local v2, "screen":Landroid/preference/PreferenceScreen;
    invoke-virtual {p0, v2}, Lnet/veritran/vtuserapplication/utils/PreferenceFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .end local v1    # "m":Ljava/lang/reflect/Method;
    .end local v2    # "screen":Landroid/preference/PreferenceScreen;
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "LOG"

    const-string v4, "To avoid fortify issue"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public addPreferencesFromResource(I)V
    .locals 8
    .param p1, "resId"    # I

    .prologue
    .line 194
    invoke-direct {p0}, Lnet/veritran/vtuserapplication/utils/PreferenceFragment;->requirePreferenceManager()V

    .line 196
    :try_start_0
    const-class v3, Landroid/preference/PreferenceManager;

    const-string v4, "inflateFromResource"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Landroid/preference/PreferenceScreen;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 198
    .local v1, "m":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lnet/veritran/vtuserapplication/utils/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/PreferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    .line 199
    .local v2, "screen":Landroid/preference/PreferenceScreen;
    invoke-virtual {p0, v2}, Lnet/veritran/vtuserapplication/utils/PreferenceFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .end local v1    # "m":Ljava/lang/reflect/Method;
    .end local v2    # "screen":Landroid/preference/PreferenceScreen;
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "LOG"

    const-string v4, "To avoid fortify issue"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
    .locals 1
    .param p1, "key"    # Ljava/lang/CharSequence;

    .prologue
    .line 206
    iget-object v0, p0, Lnet/veritran/vtuserapplication/utils/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 207
    const/4 v0, 0x0

    .line 209
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/veritran/vtuserapplication/utils/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    goto :goto_0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 232
    invoke-direct {p0}, Lnet/veritran/vtuserapplication/utils/PreferenceFragment;->ensureList()V

    .line 233
    iget-object v0, p0, Lnet/veritran/vtuserapplication/utils/PreferenceFragment;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method public getPreferenceManager()Landroid/preference/PreferenceManager;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lnet/veritran/vtuserapplication/utils/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    return-object v0
.end method

.method public getPreferenceScreen()Landroid/preference/PreferenceScreen;
    .locals 5

    .prologue
    .line 173
    :try_start_0
    const-class v2, Landroid/preference/PreferenceManager;

    const-string v3, "getPreferenceScreen"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 175
    .local v1, "m":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lnet/veritran/vtuserapplication/utils/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 85
    iget-boolean v2, p0, Lnet/veritran/vtuserapplication/utils/PreferenceFragment;->mHavePrefs:Z

    if-eqz v2, :cond_0

    .line 86
    invoke-direct {p0}, Lnet/veritran/vtuserapplication/utils/PreferenceFragment;->bindPreferences()V

    .line 89
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lnet/veritran/vtuserapplication/utils/PreferenceFragment;->mInitDone:Z

    .line 91
    if-eqz p1, :cond_1

    .line 92
    const-string v2, "android:preferences"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 93
    .local v0, "container":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 95
    .local v1, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v1, :cond_1

    .line 96
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 100
    .end local v0    # "container":Landroid/os/Bundle;
    .end local v1    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 141
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 143
    :try_start_0
    const-class v2, Landroid/preference/PreferenceManager;

    const-string v3, "dispatchActivityResult"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Landroid/content/Intent;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 145
    .local v1, "m":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lnet/veritran/vtuserapplication/utils/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "LOG"

    const-string v3, "To avoid fortify issue"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    :try_start_0
    const-class v2, Landroid/preference/PreferenceManager;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/app/Activity;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 64
    .local v0, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Landroid/preference/PreferenceManager;>;"
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/PreferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceManager;

    iput-object v2, p0, Lnet/veritran/vtuserapplication/utils/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .end local v0    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Landroid/preference/PreferenceManager;>;"
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "LOG"

    const-string v3, "To avoid fortify issue"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 72
    new-instance v1, Landroid/widget/ListView;

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/PreferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 73
    .local v1, "listView":Landroid/widget/ListView;
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setId(I)V

    .line 74
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    .line 75
    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 76
    .local v0, "horizontalPadding":I
    invoke-virtual {v1, v0, v4, v0, v4}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 78
    .end local v0    # "horizontalPadding":I
    :cond_0
    return-object v1
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    .line 120
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 122
    :try_start_0
    const-class v2, Landroid/preference/PreferenceManager;

    const-string v3, "dispatchActivityDestroy"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 124
    .local v1, "m":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lnet/veritran/vtuserapplication/utils/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "LOG"

    const-string v3, "To avoid fortify issue"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 114
    iput-object v1, p0, Lnet/veritran/vtuserapplication/utils/PreferenceFragment;->mList:Landroid/widget/ListView;

    .line 115
    iget-object v0, p0, Lnet/veritran/vtuserapplication/utils/PreferenceFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 116
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 117
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 131
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 132
    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 133
    .local v1, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v1, :cond_0

    .line 134
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 135
    .local v0, "container":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 136
    const-string v2, "android:preferences"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 138
    .end local v0    # "container":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 5

    .prologue
    .line 103
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 105
    :try_start_0
    const-class v2, Landroid/preference/PreferenceManager;

    const-string v3, "dispatchActivityStop"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 107
    .local v1, "m":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lnet/veritran/vtuserapplication/utils/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "LOG"

    const-string v3, "To avoid fortify issue"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPreferenceScreen(Landroid/preference/PreferenceScreen;)V
    .locals 8
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 157
    :try_start_0
    const-class v3, Landroid/preference/PreferenceManager;

    const-string v4, "setPreferences"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/preference/PreferenceScreen;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 159
    .local v1, "m":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lnet/veritran/vtuserapplication/utils/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 160
    .local v2, "result":Z
    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 161
    const/4 v3, 0x1

    iput-boolean v3, p0, Lnet/veritran/vtuserapplication/utils/PreferenceFragment;->mHavePrefs:Z

    .line 162
    iget-boolean v3, p0, Lnet/veritran/vtuserapplication/utils/PreferenceFragment;->mInitDone:Z

    if-eqz v3, :cond_0

    .line 163
    invoke-direct {p0}, Lnet/veritran/vtuserapplication/utils/PreferenceFragment;->postBindPreferences()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .end local v1    # "m":Ljava/lang/reflect/Method;
    .end local v2    # "result":Z
    :cond_0
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "LOG"

    const-string v4, "To avoid fortify issue"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
