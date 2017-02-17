.class public Lde/viktorreiser/toolbox/util/AndroidUtils;
.super Ljava/lang/Object;
.source "AndroidUtils.java"


# static fields
.field private static mFlingEndField:Ljava/lang/reflect/Field;

.field private static mFlingEndMethod:Ljava/lang/reflect/Method;

.field private static mLocation:[I

.field private static mSQLiteSupportsFTS3:Ljava/lang/Boolean;

.field private static mSQLiteSupportsFTS4:Ljava/lang/Boolean;

.field private static mSQLiteSupportsForeignKeys:Ljava/lang/Boolean;

.field private static mSQLiteVersion:Ljava/lang/String;

.field private static mStatusBarRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 34
    sput-object v4, Lde/viktorreiser/toolbox/util/AndroidUtils;->mSQLiteVersion:Ljava/lang/String;

    .line 35
    sput-object v4, Lde/viktorreiser/toolbox/util/AndroidUtils;->mSQLiteSupportsFTS3:Ljava/lang/Boolean;

    .line 36
    sput-object v4, Lde/viktorreiser/toolbox/util/AndroidUtils;->mSQLiteSupportsFTS4:Ljava/lang/Boolean;

    .line 37
    sput-object v4, Lde/viktorreiser/toolbox/util/AndroidUtils;->mSQLiteSupportsForeignKeys:Ljava/lang/Boolean;

    .line 38
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    sput-object v1, Lde/viktorreiser/toolbox/util/AndroidUtils;->mStatusBarRect:Landroid/graphics/Rect;

    .line 39
    const/4 v1, 0x2

    new-array v1, v1, [I

    sput-object v1, Lde/viktorreiser/toolbox/util/AndroidUtils;->mLocation:[I

    .line 40
    sput-object v4, Lde/viktorreiser/toolbox/util/AndroidUtils;->mFlingEndField:Ljava/lang/reflect/Field;

    .line 41
    sput-object v4, Lde/viktorreiser/toolbox/util/AndroidUtils;->mFlingEndMethod:Ljava/lang/reflect/Method;

    .line 45
    :try_start_0
    const-class v1, Landroid/widget/AbsListView;

    const-string v2, "mFlingRunnable"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lde/viktorreiser/toolbox/util/AndroidUtils;->mFlingEndField:Ljava/lang/reflect/Field;

    .line 46
    sget-object v1, Lde/viktorreiser/toolbox/util/AndroidUtils;->mFlingEndField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 47
    sget-object v1, Lde/viktorreiser/toolbox/util/AndroidUtils;->mFlingEndField:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "endFling"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lde/viktorreiser/toolbox/util/AndroidUtils;->mFlingEndMethod:Ljava/lang/reflect/Method;

    .line 48
    sget-object v1, Lde/viktorreiser/toolbox/util/AndroidUtils;->mFlingEndMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 49
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 51
    .restart local v0    # "e":Ljava/lang/Exception;
    sput-object v4, Lde/viktorreiser/toolbox/util/AndroidUtils;->mFlingEndMethod:Ljava/lang/reflect/Method;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    return-void
.end method

.method public static dipToPixel(Landroid/content/Context;F)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dip"    # F

    .prologue
    .line 304
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static doesSQLiteSupportFTS3()Z
    .locals 3

    .prologue
    .line 257
    sget-object v0, Lde/viktorreiser/toolbox/util/AndroidUtils;->mSQLiteSupportsFTS3:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 259
    const-string v0, "."

    const-string v1, "3.4.0"

    invoke-static {}, Lde/viktorreiser/toolbox/util/AndroidUtils;->getSQLiteVersion()Ljava/lang/String;

    move-result-object v2

    .line 258
    invoke-static {v0, v1, v2}, Lde/viktorreiser/toolbox/util/StringUtils;->compareVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lde/viktorreiser/toolbox/util/AndroidUtils;->mSQLiteSupportsFTS3:Ljava/lang/Boolean;

    .line 262
    :cond_0
    sget-object v0, Lde/viktorreiser/toolbox/util/AndroidUtils;->mSQLiteSupportsFTS3:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 258
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static doesSQLiteSupportFTS4()Z
    .locals 3

    .prologue
    .line 271
    sget-object v0, Lde/viktorreiser/toolbox/util/AndroidUtils;->mSQLiteSupportsFTS4:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 273
    const-string v0, "."

    const-string v1, "3.7.4"

    invoke-static {}, Lde/viktorreiser/toolbox/util/AndroidUtils;->getSQLiteVersion()Ljava/lang/String;

    move-result-object v2

    .line 272
    invoke-static {v0, v1, v2}, Lde/viktorreiser/toolbox/util/StringUtils;->compareVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lde/viktorreiser/toolbox/util/AndroidUtils;->mSQLiteSupportsFTS4:Ljava/lang/Boolean;

    .line 276
    :cond_0
    sget-object v0, Lde/viktorreiser/toolbox/util/AndroidUtils;->mSQLiteSupportsFTS4:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 272
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static doesSQLiteSupportsForeignKeys()Z
    .locals 3

    .prologue
    .line 285
    sget-object v0, Lde/viktorreiser/toolbox/util/AndroidUtils;->mSQLiteSupportsForeignKeys:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 287
    const-string v0, "."

    const-string v1, "3.6.19"

    invoke-static {}, Lde/viktorreiser/toolbox/util/AndroidUtils;->getSQLiteVersion()Ljava/lang/String;

    move-result-object v2

    .line 286
    invoke-static {v0, v1, v2}, Lde/viktorreiser/toolbox/util/StringUtils;->compareVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lde/viktorreiser/toolbox/util/AndroidUtils;->mSQLiteSupportsForeignKeys:Ljava/lang/Boolean;

    .line 290
    :cond_0
    sget-object v0, Lde/viktorreiser/toolbox/util/AndroidUtils;->mSQLiteSupportsForeignKeys:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 286
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getContentLocation(Landroid/view/View;)Landroid/graphics/Point;
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 389
    invoke-static {p0}, Lde/viktorreiser/toolbox/util/AndroidUtils;->getScreenLocation(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v0

    .line 390
    .local v0, "point":Landroid/graphics/Point;
    iget v1, v0, Landroid/graphics/Point;->y:I

    invoke-static {p0}, Lde/viktorreiser/toolbox/util/AndroidUtils;->getContentOffsetFromTop(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 391
    return-object v0
.end method

.method public static getContentOffsetFromTop(Landroid/view/View;)I
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 351
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 353
    .local v0, "offset":I
    if-nez v0, :cond_0

    .line 354
    sget-object v1, Lde/viktorreiser/toolbox/util/AndroidUtils;->mStatusBarRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 355
    sget-object v1, Lde/viktorreiser/toolbox/util/AndroidUtils;->mStatusBarRect:Landroid/graphics/Rect;

    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 358
    :cond_0
    return v0
.end method

.method public static getFreeExteranlStorageSize()I
    .locals 4

    .prologue
    .line 175
    new-instance v2, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 176
    .local v2, "stats":Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    .line 177
    .local v0, "availableBlocks":I
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    .line 179
    .local v1, "blockSizeInBytes":I
    div-int/lit16 v3, v1, 0x400

    mul-int/2addr v3, v0

    return v3
.end method

.method public static getSQLiteVersion()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 230
    sget-object v2, Lde/viktorreiser/toolbox/util/AndroidUtils;->mSQLiteVersion:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 231
    const-string v2, ":memory:"

    invoke-static {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 232
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "select sqlite_version() AS sqlite_version"

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 234
    .local v0, "cursor":Landroid/database/Cursor;
    const-string v2, ""

    sput-object v2, Lde/viktorreiser/toolbox/util/AndroidUtils;->mSQLiteVersion:Ljava/lang/String;

    .line 236
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 240
    sget-object v2, Lde/viktorreiser/toolbox/util/AndroidUtils;->mSQLiteVersion:Ljava/lang/String;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    sget-object v2, Lde/viktorreiser/toolbox/util/AndroidUtils;->mSQLiteVersion:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lde/viktorreiser/toolbox/util/AndroidUtils;->mSQLiteVersion:Ljava/lang/String;

    .line 244
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 245
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 248
    :cond_1
    sget-object v2, Lde/viktorreiser/toolbox/util/AndroidUtils;->mSQLiteVersion:Ljava/lang/String;

    return-object v2

    .line 237
    :cond_2
    sget-object v2, Lde/viktorreiser/toolbox/util/AndroidUtils;->mSQLiteVersion:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lde/viktorreiser/toolbox/util/AndroidUtils;->mSQLiteVersion:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getScreenLocation(Landroid/view/View;)Landroid/graphics/Point;
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 373
    sget-object v0, Lde/viktorreiser/toolbox/util/AndroidUtils;->mLocation:[I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 374
    new-instance v0, Landroid/graphics/Point;

    sget-object v1, Lde/viktorreiser/toolbox/util/AndroidUtils;->mLocation:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sget-object v2, Lde/viktorreiser/toolbox/util/AndroidUtils;->mLocation:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public static getStatusBarHeight(Landroid/view/Window;)I
    .locals 2
    .param p0, "window"    # Landroid/view/Window;

    .prologue
    .line 319
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    sget-object v1, Lde/viktorreiser/toolbox/util/AndroidUtils;->mStatusBarRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 320
    sget-object v0, Lde/viktorreiser/toolbox/util/AndroidUtils;->mStatusBarRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public static getTitleBarHeight(Landroid/view/View;)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 335
    sget-object v0, Lde/viktorreiser/toolbox/util/AndroidUtils;->mStatusBarRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 336
    sget-object v0, Lde/viktorreiser/toolbox/util/AndroidUtils;->mStatusBarRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 192
    invoke-static {p0}, Lde/viktorreiser/toolbox/util/AndroidUtils;->isWiFiConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lde/viktorreiser/toolbox/util/AndroidUtils;->isMobileNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isMobileNetworkConnected(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 218
    .line 219
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 218
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 220
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    return v1
.end method

.method public static isWiFiConnected(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 205
    .line 206
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 205
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 207
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    return v1
.end method

.method public static makeImageToast(Landroid/content/Context;I)Landroid/widget/Toast;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imageResId"    # I

    .prologue
    .line 69
    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lde/viktorreiser/toolbox/util/AndroidUtils;->makeImageToast(Landroid/content/Context;ILjava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static makeImageToast(Landroid/content/Context;III)Landroid/widget/Toast;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imageResId"    # I
    .param p2, "textResId"    # I
    .param p3, "length"    # I

    .prologue
    .line 89
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lde/viktorreiser/toolbox/util/AndroidUtils;->makeImageToast(Landroid/content/Context;ILjava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static makeImageToast(Landroid/content/Context;ILjava/lang/CharSequence;I)Landroid/widget/Toast;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imageResId"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "length"    # I

    .prologue
    .line 113
    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 115
    .local v11, "toast":Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v9

    .line 116
    .local v9, "rootView":Landroid/view/View;
    const/4 v7, 0x0

    .line 117
    .local v7, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v8, 0x0

    .line 120
    .local v8, "messageTextView":Landroid/view/View;
    instance-of v12, v9, Landroid/widget/LinearLayout;

    if-eqz v12, :cond_0

    move-object v7, v9

    .line 121
    check-cast v7, Landroid/widget/LinearLayout;

    .line 123
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    .line 124
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 126
    .local v2, "child":Landroid/view/View;
    instance-of v12, v2, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    move-object v8, v2

    .line 127
    check-cast v8, Landroid/widget/TextView;

    .line 129
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    instance-of v12, v12, Landroid/widget/LinearLayout$LayoutParams;

    if-nez v12, :cond_0

    .line 130
    const/4 v8, 0x0

    .line 137
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    if-eqz v7, :cond_1

    if-nez v8, :cond_2

    .line 138
    :cond_1
    const-string v12, "failed to create image toast layout, using usual toast"

    invoke-static {v12}, Lde/viktorreiser/toolbox/util/L;->w(Ljava/lang/String;)V

    .line 163
    :goto_0
    return-object v11

    .line 142
    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 143
    .local v10, "textParams":Landroid/view/ViewGroup$LayoutParams;
    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    .end local v10    # "textParams":Landroid/view/ViewGroup$LayoutParams;
    const/16 v12, 0x10

    iput v12, v10, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 146
    const/high16 v12, 0x41c80000    # 25.0f

    invoke-static {p0, v12}, Lde/viktorreiser/toolbox/util/AndroidUtils;->dipToPixel(Landroid/content/Context;F)I

    move-result v5

    .line 147
    .local v5, "imageSize":I
    const/high16 v12, 0x41700000    # 15.0f

    invoke-static {p0, v12}, Lde/viktorreiser/toolbox/util/AndroidUtils;->dipToPixel(Landroid/content/Context;F)I

    move-result v3

    .line 150
    .local v3, "imageMargin":I
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 151
    .local v4, "imageParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v4, v12, v13, v3, v14}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 152
    const/16 v12, 0x10

    iput v12, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 155
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 156
    .local v6, "imageView":Landroid/widget/ImageView;
    move/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 157
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 161
    const/4 v12, 0x0

    invoke-virtual {v7, v6, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public static stopListFling(Landroid/widget/ListView;)V
    .locals 3
    .param p0, "list"    # Landroid/widget/ListView;

    .prologue
    .line 401
    sget-object v0, Lde/viktorreiser/toolbox/util/AndroidUtils;->mFlingEndMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 403
    :try_start_0
    sget-object v0, Lde/viktorreiser/toolbox/util/AndroidUtils;->mFlingEndMethod:Ljava/lang/reflect/Method;

    sget-object v1, Lde/viktorreiser/toolbox/util/AndroidUtils;->mFlingEndField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 404
    :catch_0
    move-exception v0

    goto :goto_0
.end method
