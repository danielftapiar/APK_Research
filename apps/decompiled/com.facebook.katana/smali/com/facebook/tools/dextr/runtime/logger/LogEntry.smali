.class public Lcom/facebook/tools/dextr/runtime/logger/LogEntry;
.super Ljava/lang/Object;
.source "LogEntry.java"


# annotations
.annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private mCallID:I
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field private mEntryID:I
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field private mEntryType:I
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field private mLongExtra:J
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field private mMatchID:I
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field private mThreadID:I
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field private mTime:J
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    return-void
.end method

.method public constructor <init>(ILcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;Ljava/lang/String;)V
    .locals 12
    .param p2    # Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v7, v6

    move v8, v6

    move-object v9, p3

    move-wide v10, v4

    .line 183
    invoke-virtual/range {v1 .. v11}, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;->a(ILcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;JIIILjava/lang/String;J)Lcom/facebook/tools/dextr/runtime/logger/LogEntry;

    .line 184
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/16 v2, 0x40

    .line 258
    if-nez p0, :cond_1

    .line 259
    const/4 v0, 0x0

    .line 268
    :cond_0
    :goto_0
    return-object v0

    .line 262
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 264
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 265
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;->mEntryID:I

    return v0
.end method

.method final a(ILcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;JIIILjava/lang/String;J)Lcom/facebook/tools/dextr/runtime/logger/LogEntry;
    .locals 1
    .param p2    # Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 195
    iput p1, p0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;->mEntryID:I

    .line 196
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;->mEntryType:I

    .line 197
    iput-wide p3, p0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;->mTime:J

    .line 198
    iput p5, p0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;->mThreadID:I

    .line 199
    iput p6, p0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;->mCallID:I

    .line 200
    iput p7, p0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;->mMatchID:I

    .line 201
    invoke-static {p8}, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;->a:Ljava/lang/String;

    .line 202
    iput-wide p9, p0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;->mLongExtra:J

    .line 204
    return-object p0

    .line 196
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->ordinal()I

    move-result v0

    goto :goto_0
.end method

.method public final b()Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;
    .locals 2

    .prologue
    .line 225
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->VALUES:[Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    iget v1, p0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;->mEntryType:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 233
    iget-wide v0, p0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;->mTime:J

    return-wide v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;->mThreadID:I

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;->mCallID:I

    return v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;->mMatchID:I

    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final h()J
    .locals 2

    .prologue
    .line 253
    iget-wide v0, p0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;->mLongExtra:J

    return-wide v0
.end method
