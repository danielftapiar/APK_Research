.class Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread;
.super Ljava/lang/Thread;
.source "FaviconCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/viktorreiser/toolbox/net/FaviconCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaviconThread"
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$de$viktorreiser$toolbox$net$FaviconCache$FetchLevel:[I


# instance fields
.field private volatile mmShutdown:Z

.field final synthetic this$0:Lde/viktorreiser/toolbox/net/FaviconCache;


# direct methods
.method static synthetic $SWITCH_TABLE$de$viktorreiser$toolbox$net$FaviconCache$FetchLevel()[I
    .locals 3

    .prologue
    .line 599
    sget-object v0, Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread;->$SWITCH_TABLE$de$viktorreiser$toolbox$net$FaviconCache$FetchLevel:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;->values()[Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;->SOFT:Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;

    invoke-virtual {v1}, Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;->STRONG:Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;

    invoke-virtual {v1}, Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;->WEAK:Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;

    invoke-virtual {v1}, Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread;->$SWITCH_TABLE$de$viktorreiser$toolbox$net$FaviconCache$FetchLevel:[I

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

.method private constructor <init>(Lde/viktorreiser/toolbox/net/FaviconCache;)V
    .locals 1

    .prologue
    .line 599
    iput-object p1, p0, Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread;->this$0:Lde/viktorreiser/toolbox/net/FaviconCache;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 603
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread;->mmShutdown:Z

    return-void
.end method

.method synthetic constructor <init>(Lde/viktorreiser/toolbox/net/FaviconCache;Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread;)V
    .locals 0

    .prologue
    .line 599
    invoke-direct {p0, p1}, Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread;-><init>(Lde/viktorreiser/toolbox/net/FaviconCache;)V

    return-void
.end method

.method static synthetic access$2(Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread;Z)V
    .locals 0

    .prologue
    .line 603
    iput-boolean p1, p0, Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread;->mmShutdown:Z

    return-void
.end method

.method private getHrefIfIconLink(Ljava/lang/String;I)[Ljava/lang/Object;
    .locals 9
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "i"    # I

    .prologue
    const/16 v8, 0x22

    .line 934
    const/4 v6, 0x2

    new-array v5, v6, [Ljava/lang/Object;

    .line 935
    .local v5, "res":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 936
    .local v4, "rel":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 939
    .local v1, "href":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    const-string v6, "rel=\""

    invoke-virtual {p1, v6, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "REL=\""

    invoke-virtual {p1, v6, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 940
    :cond_1
    add-int/lit8 p2, p2, 0x5

    .line 942
    if-nez v4, :cond_0

    .line 946
    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4    # "rel":Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 949
    .restart local v4    # "rel":Ljava/lang/StringBuilder;
    :goto_1
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "i":I
    .local v2, "i":I
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, "ct":C
    if-ne v0, v8, :cond_5

    move p2, v2

    .line 967
    .end local v0    # "ct":C
    .end local v2    # "i":I
    .restart local p2    # "i":I
    :cond_2
    :goto_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3e

    if-eq v6, v7, :cond_3

    if-eqz v4, :cond_b

    if-eqz v1, :cond_b

    .line 968
    :cond_3
    const/4 v6, 0x1

    add-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 970
    if-eqz v4, :cond_4

    if-nez v1, :cond_9

    .line 982
    :cond_4
    :goto_3
    return-object v5

    .line 950
    .end local p2    # "i":I
    .restart local v0    # "ct":C
    .restart local v2    # "i":I
    :cond_5
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move p2, v2

    .end local v2    # "i":I
    .restart local p2    # "i":I
    goto :goto_1

    .line 952
    .end local v0    # "ct":C
    :cond_6
    const-string v6, "href=\""

    invoke-virtual {p1, v6, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "HREF=\""

    invoke-virtual {p1, v6, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 953
    :cond_7
    add-int/lit8 p2, p2, 0x6

    .line 955
    if-nez v1, :cond_0

    .line 959
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1    # "href":Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 962
    .restart local v1    # "href":Ljava/lang/StringBuilder;
    :goto_4
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .restart local v0    # "ct":C
    if-ne v0, v8, :cond_8

    move p2, v2

    .end local v2    # "i":I
    .restart local p2    # "i":I
    goto :goto_2

    .line 963
    .end local p2    # "i":I
    .restart local v2    # "i":I
    :cond_8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move p2, v2

    .end local v2    # "i":I
    .restart local p2    # "i":I
    goto :goto_4

    .line 974
    .end local v0    # "ct":C
    :cond_9
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 976
    .local v3, "r":Ljava/lang/String;
    const-string v6, "icon"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string v6, "shortcut icon"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 977
    const-string v6, "apple-touch-icon"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 978
    const-string v6, "apple-touch-icon-precompressed"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 979
    :cond_a
    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    goto :goto_3

    .line 985
    .end local v3    # "r":Ljava/lang/String;
    :cond_b
    add-int/lit8 p2, p2, 0x1

    .line 938
    goto/16 :goto_0
.end method

.method private parseLinkFromHtml(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 10
    .param p1, "br"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 867
    const/4 v5, 0x0

    .line 868
    .local v5, "line":Ljava/lang/String;
    const/4 v4, 0x0

    .line 869
    .local v4, "isStyle":Z
    const/4 v3, 0x0

    .line 871
    .local v3, "isScript":Z
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    move-object v0, v8

    .line 914
    :cond_0
    :goto_1
    return-object v0

    .line 873
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    move v2, v1

    .line 876
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_2
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    :try_start_0
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x3c

    if-ne v7, v9, :cond_b

    .line 879
    if-eqz v3, :cond_3

    .line 880
    const-string v7, "/script>"

    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "/SCRIPT>"

    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 881
    :cond_2
    const/4 v3, 0x0

    .line 882
    add-int/lit8 v1, v1, 0x8

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_2

    .line 884
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_3
    if-eqz v4, :cond_5

    .line 885
    const-string v7, "/style>"

    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "/STYLE>"

    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 886
    :cond_4
    const/4 v4, 0x0

    .line 887
    add-int/lit8 v1, v1, 0x7

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_2

    .line 890
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_5
    const-string v7, "script"

    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "SCRIPT"

    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 891
    :cond_6
    const/4 v3, 0x1

    .line 892
    add-int/lit8 v1, v1, 0x6

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_2

    .line 893
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_7
    const-string v7, "style"

    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "STYLE"

    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 894
    :cond_8
    const/4 v4, 0x1

    .line 895
    add-int/lit8 v1, v1, 0x5

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_2

    .line 896
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_9
    const-string v7, "link"

    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_a

    const-string v7, "REL"

    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 897
    :cond_a
    add-int/lit8 v1, v1, 0x4

    .line 898
    invoke-direct {p0, v5, v1}, Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread;->getHrefIfIconLink(Ljava/lang/String;I)[Ljava/lang/Object;

    move-result-object v6

    .line 899
    .local v6, "res":[Ljava/lang/Object;
    const/4 v7, 0x0

    aget-object v0, v6, v7

    check-cast v0, Ljava/lang/String;

    .line 900
    .local v0, "href":Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v7, v6, v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 902
    if-nez v0, :cond_0

    .end local v0    # "href":Ljava/lang/String;
    .end local v6    # "res":[Ljava/lang/Object;
    :cond_b
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto/16 :goto_2

    .line 905
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_c
    const-string v7, "/head>"

    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_d

    const-string v7, "/HEAD>"

    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_b

    :cond_d
    move-object v0, v8

    .line 906
    goto/16 :goto_1

    .line 910
    :catch_0
    move-exception v7

    goto/16 :goto_0
.end method

.method private processRequest()V
    .locals 19

    .prologue
    .line 620
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread;->this$0:Lde/viktorreiser/toolbox/net/FaviconCache;

    # getter for: Lde/viktorreiser/toolbox/net/FaviconCache;->mFaviconQueue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v1}, Lde/viktorreiser/toolbox/net/FaviconCache;->access$0(Lde/viktorreiser/toolbox/net/FaviconCache;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    .local v14, "u":Ljava/net/URL;
    move-object/from16 v0, p0

    iget-object v1, v0, Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread;->this$0:Lde/viktorreiser/toolbox/net/FaviconCache;

    # getter for: Lde/viktorreiser/toolbox/net/FaviconCache;->mLoadLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v1}, Lde/viktorreiser/toolbox/net/FaviconCache;->access$1(Lde/viktorreiser/toolbox/net/FaviconCache;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 629
    move-object/from16 v0, p0

    iget-object v1, v0, Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread;->this$0:Lde/viktorreiser/toolbox/net/FaviconCache;

    # getter for: Lde/viktorreiser/toolbox/net/FaviconCache;->mLoadLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v1}, Lde/viktorreiser/toolbox/net/FaviconCache;->access$1(Lde/viktorreiser/toolbox/net/FaviconCache;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 632
    move-object v4, v14

    .line 633
    .local v4, "url":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v9

    .line 634
    .local v9, "host":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v12

    .line 635
    .local v12, "protocol":Ljava/lang/String;
    invoke-static {v4}, Lde/viktorreiser/toolbox/net/FaviconCache;->getCacheHash(Ljava/net/URL;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 638
    .local v5, "hash":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread;->this$0:Lde/viktorreiser/toolbox/net/FaviconCache;

    # getter for: Lde/viktorreiser/toolbox/net/FaviconCache;->mCache:Lde/viktorreiser/toolbox/os/SynchronizedSoftPool;
    invoke-static {v1}, Lde/viktorreiser/toolbox/net/FaviconCache;->access$2(Lde/viktorreiser/toolbox/net/FaviconCache;)Lde/viktorreiser/toolbox/os/SynchronizedSoftPool;

    move-result-object v1

    invoke-virtual {v1, v5}, Lde/viktorreiser/toolbox/os/SynchronizedSoftPool;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 721
    .end local v4    # "url":Ljava/net/URL;
    .end local v5    # "hash":I
    .end local v9    # "host":Ljava/lang/String;
    .end local v12    # "protocol":Ljava/lang/String;
    .end local v14    # "u":Ljava/net/URL;
    :cond_0
    :goto_0
    return-void

    .line 621
    :catch_0
    move-exception v7

    .line 623
    .local v7, "e1":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 642
    .end local v7    # "e1":Ljava/lang/InterruptedException;
    .restart local v4    # "url":Ljava/net/URL;
    .restart local v5    # "hash":I
    .restart local v9    # "host":Ljava/lang/String;
    .restart local v12    # "protocol":Ljava/lang/String;
    .restart local v14    # "u":Ljava/net/URL;
    :cond_1
    const/4 v10, 0x0

    .line 643
    .local v10, "icon":Landroid/graphics/Bitmap;
    const/4 v11, 0x0

    .line 644
    .local v11, "offline":Z
    const/4 v1, 0x3

    new-array v13, v1, [Ljava/lang/Object;

    .line 646
    .local v13, "result":[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v1, v0, Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread;->this$0:Lde/viktorreiser/toolbox/net/FaviconCache;

    # getter for: Lde/viktorreiser/toolbox/net/FaviconCache;->mFetchLevel:[Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;
    invoke-static {v1}, Lde/viktorreiser/toolbox/net/FaviconCache;->access$3(Lde/viktorreiser/toolbox/net/FaviconCache;)[Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;

    move-result-object v15

    array-length v0, v15

    move/from16 v16, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    move/from16 v0, v16

    if-lt v2, v0, :cond_8

    .line 674
    :cond_2
    if-nez v10, :cond_3

    .line 675
    move-object/from16 v0, p0

    iget-object v1, v0, Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread;->this$0:Lde/viktorreiser/toolbox/net/FaviconCache;

    # getter for: Lde/viktorreiser/toolbox/net/FaviconCache;->mDefaultIcon:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lde/viktorreiser/toolbox/net/FaviconCache;->access$4(Lde/viktorreiser/toolbox/net/FaviconCache;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 677
    if-eqz v10, :cond_0

    .line 684
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread;->this$0:Lde/viktorreiser/toolbox/net/FaviconCache;

    # getter for: Lde/viktorreiser/toolbox/net/FaviconCache;->mCache:Lde/viktorreiser/toolbox/os/SynchronizedSoftPool;
    invoke-static {v1}, Lde/viktorreiser/toolbox/net/FaviconCache;->access$2(Lde/viktorreiser/toolbox/net/FaviconCache;)Lde/viktorreiser/toolbox/os/SynchronizedSoftPool;

    move-result-object v1

    invoke-virtual {v1, v5, v10}, Lde/viktorreiser/toolbox/os/SynchronizedSoftPool;->put(ILjava/lang/Object;)V

    .line 687
    move-object/from16 v0, p0

    iget-object v1, v0, Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread;->this$0:Lde/viktorreiser/toolbox/net/FaviconCache;

    # getter for: Lde/viktorreiser/toolbox/net/FaviconCache;->mDefaultIcon:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lde/viktorreiser/toolbox/net/FaviconCache;->access$4(Lde/viktorreiser/toolbox/net/FaviconCache;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-ne v10, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread;->this$0:Lde/viktorreiser/toolbox/net/FaviconCache;

    # getter for: Lde/viktorreiser/toolbox/net/FaviconCache;->mPersistDefault:Z
    invoke-static {v1}, Lde/viktorreiser/toolbox/net/FaviconCache;->access$5(Lde/viktorreiser/toolbox/net/FaviconCache;)Z

    move-result v1

    if-nez v1, :cond_4

    if-nez v11, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread;->this$0:Lde/viktorreiser/toolbox/net/FaviconCache;

    # getter for: Lde/viktorreiser/toolbox/net/FaviconCache;->mCacheFolder:Ljava/lang/String;
    invoke-static {v1}, Lde/viktorreiser/toolbox/net/FaviconCache;->access$6(Lde/viktorreiser/toolbox/net/FaviconCache;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 689
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread;->this$0:Lde/viktorreiser/toolbox/net/FaviconCache;

    # getter for: Lde/viktorreiser/toolbox/net/FaviconCache;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;
    invoke-static {v1}, Lde/viktorreiser/toolbox/net/FaviconCache;->access$7(Lde/viktorreiser/toolbox/net/FaviconCache;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread;->this$0:Lde/viktorreiser/toolbox/net/FaviconCache;

    # getter for: Lde/viktorreiser/toolbox/net/FaviconCache;->mCompressQuality:I
    invoke-static {v2}, Lde/viktorreiser/toolbox/net/FaviconCache;->access$8(Lde/viktorreiser/toolbox/net/FaviconCache;)I

    move-result v2

    .line 690
    new-instance v15, Ljava/io/FileOutputStream;

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread;->this$0:Lde/viktorreiser/toolbox/net/FaviconCache;

    move-object/from16 v17, v0

    # getter for: Lde/viktorreiser/toolbox/net/FaviconCache;->mCacheFolder:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lde/viktorreiser/toolbox/net/FaviconCache;->access$6(Lde/viktorreiser/toolbox/net/FaviconCache;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, "favbm_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 689
    invoke-virtual {v10, v1, v2, v15}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 691
    move-object/from16 v0, p0

    iget-object v1, v0, Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread;->this$0:Lde/viktorreiser/toolbox/net/FaviconCache;

    # getter for: Lde/viktorreiser/toolbox/net/FaviconCache;->mAvailableOnSdCard:Ljava/util/Set;
    invoke-static {v1}, Lde/viktorreiser/toolbox/net/FaviconCache;->access$9(Lde/viktorreiser/toolbox/net/FaviconCache;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 697
    :cond_5
    :goto_2
    invoke-static {}, Lde/viktorreiser/toolbox/util/L;->isD()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 698
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v1, "Favicon [cached, "

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread;->this$0:Lde/viktorreiser/toolbox/net/FaviconCache;

    # getter for: Lde/viktorreiser/toolbox/net/FaviconCache;->mDefaultIcon:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lde/viktorreiser/toolbox/net/FaviconCache;->access$4(Lde/viktorreiser/toolbox/net/FaviconCache;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-ne v10, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread;->this$0:Lde/viktorreiser/toolbox/net/FaviconCache;

    # getter for: Lde/viktorreiser/toolbox/net/FaviconCache;->mPersistDefault:Z
    invoke-static {v1}, Lde/viktorreiser/toolbox/net/FaviconCache;->access$5(Lde/viktorreiser/toolbox/net/FaviconCache;)Z

    move-result v1

    if-nez v1, :cond_6

    if-nez v11, :cond_9

    .line 699
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread;->this$0:Lde/viktorreiser/toolbox/net/FaviconCache;

    # getter for: Lde/viktorreiser/toolbox/net/FaviconCache;->mCacheFolder:Ljava/lang/String;
    invoke-static {v1}, Lde/viktorreiser/toolbox/net/FaviconCache;->access$6(Lde/viktorreiser/toolbox/net/FaviconCache;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    const-string v1, ""

    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "persitsted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 700
    move-object/from16 v0, p0

    iget-object v1, v0, Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread;->this$0:Lde/viktorreiser/toolbox/net/FaviconCache;

    # getter for: Lde/viktorreiser/toolbox/net/FaviconCache;->mDefaultIcon:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lde/viktorreiser/toolbox/net/FaviconCache;->access$4(Lde/viktorreiser/toolbox/net/FaviconCache;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-ne v10, v1, :cond_a

    const-string v1, ", default"

    :goto_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 698
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/viktorreiser/toolbox/util/L;->d(Ljava/lang/String;)V

    .line 706
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread;->this$0:Lde/viktorreiser/toolbox/net/FaviconCache;

    # getter for: Lde/viktorreiser/toolbox/net/FaviconCache;->mListeners:Ljava/util/Map;
    invoke-static {v1}, Lde/viktorreiser/toolbox/net/FaviconCache;->access$10(Lde/viktorreiser/toolbox/net/FaviconCache;)Ljava/util/Map;

    move-result-object v2

    monitor-enter v2

    .line 707
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread;->this$0:Lde/viktorreiser/toolbox/net/FaviconCache;

    # getter for: Lde/viktorreiser/toolbox/net/FaviconCache;->mListeners:Ljava/util/Map;
    invoke-static {v1}, Lde/viktorreiser/toolbox/net/FaviconCache;->access$10(Lde/viktorreiser/toolbox/net/FaviconCache;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    const/4 v15, 0x0

    new-array v15, v15, [Lde/viktorreiser/toolbox/net/FaviconCache$OnFaviconLoad;

    invoke-interface {v1, v15}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lde/viktorreiser/toolbox/net/FaviconCache$OnFaviconLoad;

    .line 706
    .local v3, "listener":[Lde/viktorreiser/toolbox/net/FaviconCache$OnFaviconLoad;
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 710
    move-object v6, v10

    .line 713
    .local v6, "loadedFavicon":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v1, v0, Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread;->this$0:Lde/viktorreiser/toolbox/net/FaviconCache;

    # getter for: Lde/viktorreiser/toolbox/net/FaviconCache;->mUiThreadHandler:Landroid/os/Handler;
    invoke-static {v1}, Lde/viktorreiser/toolbox/net/FaviconCache;->access$11(Lde/viktorreiser/toolbox/net/FaviconCache;)Landroid/os/Handler;

    move-result-object v15

    new-instance v1, Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread$1;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread$1;-><init>(Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread;[Lde/viktorreiser/toolbox/net/FaviconCache$OnFaviconLoad;Ljava/net/URL;ILandroid/graphics/Bitmap;)V

    invoke-virtual {v15, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 646
    .end local v3    # "listener":[Lde/viktorreiser/toolbox/net/FaviconCache$OnFaviconLoad;
    .end local v6    # "loadedFavicon":Landroid/graphics/Bitmap;
    :cond_8
    aget-object v8, v15, v2

    .line 647
    .local v8, "fetchLevel":Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;
    const/4 v1, 0x0

    const/16 v17, 0x0

    aput-object v17, v13, v1

    .line 648
    const/4 v1, 0x1

    const/16 v17, 0x2

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    aput-object v18, v13, v17

    aput-object v18, v13, v1

    .line 650
    invoke-static {}, Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread;->$SWITCH_TABLE$de$viktorreiser$toolbox$net$FaviconCache$FetchLevel()[I

    move-result-object v1

    invoke-virtual {v8}, Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;->ordinal()I

    move-result v17

    aget v1, v1, v17

    packed-switch v1, :pswitch_data_0

    .line 664
    :goto_5
    const/4 v1, 0x0

    aget-object v10, v13, v1

    .end local v10    # "icon":Landroid/graphics/Bitmap;
    check-cast v10, Landroid/graphics/Bitmap;

    .line 665
    .restart local v10    # "icon":Landroid/graphics/Bitmap;
    const/4 v1, 0x1

    aget-object v1, v13, v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 667
    const/4 v1, 0x2

    aget-object v1, v13, v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 669
    if-nez v10, :cond_2

    if-nez v11, :cond_2

    .line 646
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_1

    .line 652
    :pswitch_0
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v9}, Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread;->runFetchLevelWeak([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    .line 656
    :pswitch_1
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v9, v12}, Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread;->runFetchLevelSoft([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 660
    :pswitch_2
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4}, Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread;->runFetchLevelStrong([Ljava/lang/Object;Ljava/net/URL;)V

    goto :goto_5

    .line 699
    .end local v8    # "fetchLevel":Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;
    :cond_9
    const-string v1, "not "

    goto/16 :goto_3

    .line 700
    :cond_a
    const-string v1, ""

    goto/16 :goto_4

    .line 706
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 692
    :catch_1
    move-exception v1

    goto/16 :goto_2

    .line 650
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private runFetchLevelSoft([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "result"    # [Ljava/lang/Object;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "protocol"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 775
    :try_start_0
    new-instance v3, Ljava/net/URL;

    .line 776
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/favicon.ico"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 775
    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 776
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 775
    check-cast v1, Ljava/net/HttpURLConnection;

    .line 777
    .local v1, "con":Ljava/net/HttpURLConnection;
    const/16 v3, 0x1388

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 778
    const/16 v3, 0x2710

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 779
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 781
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_0

    .line 782
    new-instance v0, Ljava/io/BufferedInputStream;

    .line 783
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 782
    invoke-direct {v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 784
    .local v0, "bis":Ljava/io/BufferedInputStream;
    const/4 v3, 0x0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, p1, v3

    .line 785
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 798
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v1    # "con":Ljava/net/HttpURLConnection;
    :cond_0
    :goto_0
    return-void

    .line 787
    :catch_0
    move-exception v2

    .line 789
    .local v2, "e":Ljava/net/MalformedURLException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 790
    .end local v2    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v2

    .line 791
    .local v2, "e":Ljava/net/SocketTimeoutException;
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, p1, v6

    goto :goto_0

    .line 792
    .end local v2    # "e":Ljava/net/SocketTimeoutException;
    :catch_2
    move-exception v2

    .line 793
    .local v2, "e":Ljava/net/SocketException;
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, p1, v6

    goto :goto_0

    .line 794
    .end local v2    # "e":Ljava/net/SocketException;
    :catch_3
    move-exception v2

    .line 796
    .local v2, "e":Ljava/io/IOException;
    const/4 v3, 0x2

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, p1, v3

    goto :goto_0
.end method

.method private runFetchLevelStrong([Ljava/lang/Object;Ljava/net/URL;)V
    .locals 12
    .param p1, "result"    # [Ljava/lang/Object;
    .param p2, "url"    # Ljava/net/URL;

    .prologue
    const/16 v11, 0xc8

    const/4 v10, 0x1

    .line 802
    :try_start_0
    new-instance v7, Ljava/net/URL;

    .line 803
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 802
    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 803
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 802
    check-cast v2, Ljava/net/HttpURLConnection;

    .line 804
    .local v2, "con":Ljava/net/HttpURLConnection;
    const/16 v7, 0x1388

    invoke-virtual {v2, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 805
    const/16 v7, 0x2710

    invoke-virtual {v2, v7}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 806
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 808
    const/4 v4, 0x0

    .line 810
    .local v4, "faviconHref":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    if-ne v7, v11, :cond_0

    .line 811
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    .line 812
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 811
    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 813
    .local v1, "br":Ljava/io/BufferedReader;
    invoke-direct {p0, v1}, Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread;->parseLinkFromHtml(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v4

    .line 814
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 817
    .end local v1    # "br":Ljava/io/BufferedReader;
    :cond_0
    if-eqz v4, :cond_1

    .line 818
    const/4 v5, 0x0

    .line 821
    .local v5, "faviconUrl":Ljava/net/URL;
    :try_start_1
    new-instance v5, Ljava/net/URL;

    .end local v5    # "faviconUrl":Ljava/net/URL;
    invoke-direct {v5, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 832
    .restart local v5    # "faviconUrl":Ljava/net/URL;
    :goto_0
    :try_start_2
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .end local v2    # "con":Ljava/net/HttpURLConnection;
    check-cast v2, Ljava/net/HttpURLConnection;

    .line 833
    .restart local v2    # "con":Ljava/net/HttpURLConnection;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 835
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    if-ne v7, v11, :cond_1

    .line 836
    new-instance v0, Ljava/io/BufferedInputStream;

    .line 837
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 836
    invoke-direct {v0, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 838
    .local v0, "bis":Ljava/io/BufferedInputStream;
    const/4 v7, 0x0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v8

    aput-object v8, p1, v7

    .line 839
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 853
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v2    # "con":Ljava/net/HttpURLConnection;
    .end local v4    # "faviconHref":Ljava/lang/String;
    .end local v5    # "faviconUrl":Ljava/net/URL;
    :cond_1
    :goto_1
    return-void

    .line 822
    .restart local v2    # "con":Ljava/net/HttpURLConnection;
    .restart local v4    # "faviconHref":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 823
    .local v3, "e":Ljava/net/MalformedURLException;
    invoke-virtual {p2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 824
    .local v6, "path":Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v6, "/"

    .line 827
    :goto_2
    new-instance v5, Ljava/net/URL;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 828
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 829
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 827
    invoke-direct {v5, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .restart local v5    # "faviconUrl":Ljava/net/URL;
    goto :goto_0

    .line 825
    .end local v5    # "faviconUrl":Ljava/net/URL;
    :cond_2
    const/16 v7, 0x2f

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v6

    goto :goto_2

    .line 842
    .end local v2    # "con":Ljava/net/HttpURLConnection;
    .end local v3    # "e":Ljava/net/MalformedURLException;
    .end local v4    # "faviconHref":Ljava/lang/String;
    .end local v6    # "path":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 844
    .restart local v3    # "e":Ljava/net/MalformedURLException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 845
    .end local v3    # "e":Ljava/net/MalformedURLException;
    :catch_2
    move-exception v3

    .line 846
    .local v3, "e":Ljava/net/SocketTimeoutException;
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, p1, v10

    goto :goto_1

    .line 847
    .end local v3    # "e":Ljava/net/SocketTimeoutException;
    :catch_3
    move-exception v3

    .line 848
    .local v3, "e":Ljava/net/SocketException;
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, p1, v10

    goto :goto_1

    .line 849
    .end local v3    # "e":Ljava/net/SocketException;
    :catch_4
    move-exception v3

    .line 851
    .local v3, "e":Ljava/io/IOException;
    const/4 v7, 0x2

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, p1, v7

    goto :goto_1
.end method

.method private runFetchLevelWeak([Ljava/lang/Object;Ljava/lang/String;)V
    .locals 11
    .param p1, "result"    # [Ljava/lang/Object;
    .param p2, "host"    # Ljava/lang/String;

    .prologue
    .line 727
    :try_start_0
    new-instance v8, Ljava/net/URL;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "http://www.getfavicon.org/?url="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/.32.png"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 728
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 726
    check-cast v1, Ljava/net/HttpURLConnection;

    .line 729
    .local v1, "con":Ljava/net/HttpURLConnection;
    const/16 v8, 0x1388

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 730
    const/16 v8, 0x2710

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 731
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 733
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_2

    .line 734
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 735
    .local v0, "bis":Ljava/io/BufferedInputStream;
    const/4 v8, 0x0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v9

    aput-object v9, p1, v8

    .line 736
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 753
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v1    # "con":Ljava/net/HttpURLConnection;
    :goto_0
    const/4 v8, 0x0

    aget-object v8, p1, v8

    if-eqz v8, :cond_1

    .line 754
    const/4 v5, 0x1

    .line 755
    .local v5, "same":Z
    const/4 v8, 0x0

    aget-object v4, p1, v8

    check-cast v4, Landroid/graphics/Bitmap;

    .line 758
    .local v4, "icon":Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .local v7, "y":I
    :goto_1
    const/16 v8, 0x20

    if-ge v7, v8, :cond_0

    if-nez v5, :cond_5

    .line 767
    :cond_0
    if-eqz v5, :cond_1

    .line 768
    const/4 v8, 0x0

    const/4 v9, 0x0

    aput-object v9, p1, v8

    .line 771
    .end local v4    # "icon":Landroid/graphics/Bitmap;
    .end local v5    # "same":Z
    .end local v7    # "y":I
    :cond_1
    :goto_2
    return-void

    .line 738
    .restart local v1    # "con":Ljava/net/HttpURLConnection;
    :cond_2
    const/4 v9, 0x1

    :try_start_1
    iget-object v8, p0, Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread;->this$0:Lde/viktorreiser/toolbox/net/FaviconCache;

    # getter for: Lde/viktorreiser/toolbox/net/FaviconCache;->mFetchLevel:[Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;
    invoke-static {v8}, Lde/viktorreiser/toolbox/net/FaviconCache;->access$3(Lde/viktorreiser/toolbox/net/FaviconCache;)[Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;

    move-result-object v8

    iget-object v10, p0, Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread;->this$0:Lde/viktorreiser/toolbox/net/FaviconCache;

    # getter for: Lde/viktorreiser/toolbox/net/FaviconCache;->mFetchLevel:[Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;
    invoke-static {v10}, Lde/viktorreiser/toolbox/net/FaviconCache;->access$3(Lde/viktorreiser/toolbox/net/FaviconCache;)[Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;

    move-result-object v10

    array-length v10, v10

    add-int/lit8 v10, v10, -0x1

    aget-object v8, v8, v10

    sget-object v10, Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;->WEAK:Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;

    if-ne v8, v10, :cond_3

    const/4 v8, 0x1

    :goto_3
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, p1, v9
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 740
    .end local v1    # "con":Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v2

    .line 742
    .local v2, "e":Ljava/net/MalformedURLException;
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 738
    .end local v2    # "e":Ljava/net/MalformedURLException;
    .restart local v1    # "con":Ljava/net/HttpURLConnection;
    :cond_3
    const/4 v8, 0x0

    goto :goto_3

    .line 743
    .end local v1    # "con":Ljava/net/HttpURLConnection;
    :catch_1
    move-exception v2

    .line 744
    .local v2, "e":Ljava/net/SocketTimeoutException;
    const/4 v9, 0x1

    iget-object v8, p0, Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread;->this$0:Lde/viktorreiser/toolbox/net/FaviconCache;

    # getter for: Lde/viktorreiser/toolbox/net/FaviconCache;->mFetchLevel:[Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;
    invoke-static {v8}, Lde/viktorreiser/toolbox/net/FaviconCache;->access$3(Lde/viktorreiser/toolbox/net/FaviconCache;)[Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;

    move-result-object v8

    iget-object v10, p0, Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread;->this$0:Lde/viktorreiser/toolbox/net/FaviconCache;

    # getter for: Lde/viktorreiser/toolbox/net/FaviconCache;->mFetchLevel:[Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;
    invoke-static {v10}, Lde/viktorreiser/toolbox/net/FaviconCache;->access$3(Lde/viktorreiser/toolbox/net/FaviconCache;)[Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;

    move-result-object v10

    array-length v10, v10

    add-int/lit8 v10, v10, -0x1

    aget-object v8, v8, v10

    sget-object v10, Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;->WEAK:Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;

    if-ne v8, v10, :cond_4

    const/4 v8, 0x1

    :goto_4
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, p1, v9

    goto :goto_0

    :cond_4
    const/4 v8, 0x0

    goto :goto_4

    .line 745
    .end local v2    # "e":Ljava/net/SocketTimeoutException;
    :catch_2
    move-exception v2

    .line 747
    .local v2, "e":Ljava/io/IOException;
    const/4 v8, 0x2

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, p1, v8

    goto :goto_2

    .line 759
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v4    # "icon":Landroid/graphics/Bitmap;
    .restart local v5    # "same":Z
    .restart local v7    # "y":I
    :cond_5
    mul-int/lit8 v3, v7, 0x20

    .line 760
    .local v3, "h":I
    const/4 v6, 0x0

    .local v6, "x":I
    :goto_5
    const/16 v8, 0x20

    if-ge v6, v8, :cond_6

    if-nez v5, :cond_7

    .line 758
    :cond_6
    add-int/lit8 v7, v7, 0x2

    goto :goto_1

    .line 761
    :cond_7
    invoke-virtual {v4, v6, v7}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v8

    iget-object v9, p0, Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread;->this$0:Lde/viktorreiser/toolbox/net/FaviconCache;

    # getter for: Lde/viktorreiser/toolbox/net/FaviconCache;->mDefaultIconFromServer:[I
    invoke-static {v9}, Lde/viktorreiser/toolbox/net/FaviconCache;->access$12(Lde/viktorreiser/toolbox/net/FaviconCache;)[I

    move-result-object v9

    add-int v10, v3, v6

    aget v9, v9, v10

    if-eq v8, v9, :cond_8

    .line 762
    const/4 v5, 0x0

    .line 760
    :cond_8
    add-int/lit8 v6, v6, 0x2

    goto :goto_5
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 607
    :goto_0
    iget-boolean v0, p0, Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread;->mmShutdown:Z

    if-eqz v0, :cond_0

    .line 610
    return-void

    .line 608
    :cond_0
    invoke-direct {p0}, Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread;->processRequest()V

    goto :goto_0
.end method
