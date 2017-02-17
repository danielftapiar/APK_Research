.class public Lcom/facebook/tools/dextr/bridge/constants/DextrConstants;
.super Ljava/lang/Object;
.source "DextrConstants.java"


# static fields
.field public static final a:Lcom/facebook/prefs/shared/PrefKey;

.field public static final b:Lcom/facebook/prefs/shared/PrefKey;

.field public static final c:Lcom/facebook/prefs/shared/PrefKey;

.field public static final d:Lcom/facebook/prefs/shared/PrefKey;

.field public static e:Ljava/lang/String;

.field private static final f:Lcom/facebook/prefs/shared/PrefKey;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    sget-object v0, Lcom/facebook/prefs/shared/SharedPrefKeys;->c:Lcom/facebook/prefs/shared/PrefKey;

    const-string v1, "dextr/"

    invoke-virtual {v0, v1}, Lcom/facebook/prefs/shared/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/common/typedkey/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/prefs/shared/PrefKey;

    .line 10
    sput-object v0, Lcom/facebook/tools/dextr/bridge/constants/DextrConstants;->f:Lcom/facebook/prefs/shared/PrefKey;

    const-string v1, "manual_tracing"

    invoke-virtual {v0, v1}, Lcom/facebook/prefs/shared/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/common/typedkey/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/prefs/shared/PrefKey;

    sput-object v0, Lcom/facebook/tools/dextr/bridge/constants/DextrConstants;->a:Lcom/facebook/prefs/shared/PrefKey;

    .line 11
    sget-object v0, Lcom/facebook/tools/dextr/bridge/constants/DextrConstants;->f:Lcom/facebook/prefs/shared/PrefKey;

    const-string v1, "manual_filter_enabled"

    invoke-virtual {v0, v1}, Lcom/facebook/prefs/shared/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/common/typedkey/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/prefs/shared/PrefKey;

    sput-object v0, Lcom/facebook/tools/dextr/bridge/constants/DextrConstants;->b:Lcom/facebook/prefs/shared/PrefKey;

    .line 12
    sget-object v0, Lcom/facebook/tools/dextr/bridge/constants/DextrConstants;->f:Lcom/facebook/prefs/shared/PrefKey;

    const-string v1, "remaining_bytes"

    invoke-virtual {v0, v1}, Lcom/facebook/prefs/shared/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/common/typedkey/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/prefs/shared/PrefKey;

    sput-object v0, Lcom/facebook/tools/dextr/bridge/constants/DextrConstants;->c:Lcom/facebook/prefs/shared/PrefKey;

    .line 13
    sget-object v0, Lcom/facebook/tools/dextr/bridge/constants/DextrConstants;->f:Lcom/facebook/prefs/shared/PrefKey;

    const-string v1, "last_remaining_bytes_update_time"

    invoke-virtual {v0, v1}, Lcom/facebook/prefs/shared/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/common/typedkey/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/prefs/shared/PrefKey;

    sput-object v0, Lcom/facebook/tools/dextr/bridge/constants/DextrConstants;->d:Lcom/facebook/prefs/shared/PrefKey;

    .line 29
    const-string v0, "1b55c7f7-961a-4ca8-88d0-18d1e908ca0e"

    sput-object v0, Lcom/facebook/tools/dextr/bridge/constants/DextrConstants;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
