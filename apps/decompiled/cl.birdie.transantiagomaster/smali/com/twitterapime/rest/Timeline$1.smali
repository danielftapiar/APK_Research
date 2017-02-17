.class final Lcom/twitterapime/rest/Timeline$1;
.super Ljava/lang/Object;
.source "Timeline.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twitterapime/rest/Timeline;->startGet$29dd8c46(Ljava/lang/String;Lcom/twitterapime/search/Query;Lcom/twitterapime/search/SearchDeviceListener;Lcom/twitterapime/parser/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/twitterapime/rest/Timeline;

.field final synthetic val$h:Lcom/twitterapime/parser/Handler;

.field final synthetic val$l:Lcom/twitterapime/search/SearchDeviceListener;

.field final synthetic val$q:Lcom/twitterapime/search/Query;

.field final synthetic val$servURLKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/twitterapime/rest/Timeline;Ljava/lang/String;Lcom/twitterapime/search/Query;Lcom/twitterapime/parser/Handler;Lcom/twitterapime/search/SearchDeviceListener;)V
    .locals 0

    .prologue
    .line 887
    iput-object p1, p0, Lcom/twitterapime/rest/Timeline$1;->this$0:Lcom/twitterapime/rest/Timeline;

    iput-object p2, p0, Lcom/twitterapime/rest/Timeline$1;->val$servURLKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/twitterapime/rest/Timeline$1;->val$q:Lcom/twitterapime/search/Query;

    iput-object p4, p0, Lcom/twitterapime/rest/Timeline$1;->val$h:Lcom/twitterapime/parser/Handler;

    iput-object p5, p0, Lcom/twitterapime/rest/Timeline$1;->val$l:Lcom/twitterapime/search/SearchDeviceListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 890
    iget-object v2, p0, Lcom/twitterapime/rest/Timeline$1;->val$servURLKey:Ljava/lang/String;

    .line 892
    .local v2, "url":Ljava/lang/String;
    iget-object v3, p0, Lcom/twitterapime/rest/Timeline$1;->val$servURLKey:Ljava/lang/String;

    const-string v4, "http"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 893
    iget-object v3, p0, Lcom/twitterapime/rest/Timeline$1;->this$0:Lcom/twitterapime/rest/Timeline;

    iget-object v3, p0, Lcom/twitterapime/rest/Timeline$1;->val$servURLKey:Ljava/lang/String;

    # invokes: Lcom/twitterapime/rest/Timeline;->getURL(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3}, Lcom/twitterapime/rest/Timeline;->access$000$672a9f4(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 895
    :cond_0
    iget-object v3, p0, Lcom/twitterapime/rest/Timeline$1;->val$q:Lcom/twitterapime/search/Query;

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/twitterapime/rest/Timeline$1;->val$q:Lcom/twitterapime/search/Query;

    invoke-virtual {v4}, Lcom/twitterapime/search/Query;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 897
    :cond_1
    iget-object v3, p0, Lcom/twitterapime/rest/Timeline$1;->this$0:Lcom/twitterapime/rest/Timeline;

    # getter for: Lcom/twitterapime/rest/Timeline;->userAccountMngr:Lcom/twitterapime/rest/UserAccountManager;
    invoke-static {v3}, Lcom/twitterapime/rest/Timeline;->access$100(Lcom/twitterapime/rest/Timeline;)Lcom/twitterapime/rest/UserAccountManager;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 898
    iget-object v3, p0, Lcom/twitterapime/rest/Timeline$1;->this$0:Lcom/twitterapime/rest/Timeline;

    # getter for: Lcom/twitterapime/rest/Timeline;->userAccountMngr:Lcom/twitterapime/rest/UserAccountManager;
    invoke-static {v3}, Lcom/twitterapime/rest/Timeline;->access$100(Lcom/twitterapime/rest/Timeline;)Lcom/twitterapime/rest/UserAccountManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/twitterapime/rest/UserAccountManager;->createRequest(Ljava/lang/String;)Lcom/twitterapime/io/HttpRequest;

    move-result-object v0

    .line 904
    .local v0, "req":Lcom/twitterapime/io/HttpRequest;
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lcom/twitterapime/io/HttpRequest;->send()Lcom/twitterapime/io/HttpResponse;

    move-result-object v1

    .line 906
    .local v1, "resp":Lcom/twitterapime/io/HttpResponse;
    invoke-static {v1}, Lcom/twitterapime/io/HttpResponseCodeInterpreter;->perform(Lcom/twitterapime/io/HttpResponse;)V

    .line 908
    invoke-static {}, Lcom/twitterapime/parser/ParserFactory;->getParser$31d4812a()Lcom/twitterapime/parser/Parser;

    move-result-object v3

    .line 909
    invoke-virtual {v1}, Lcom/twitterapime/io/HttpResponse;->getStream()Ljava/io/InputStream;

    move-result-object v4

    iget-object v5, p0, Lcom/twitterapime/rest/Timeline$1;->val$h:Lcom/twitterapime/parser/Handler;

    invoke-virtual {v3, v4, v5}, Lcom/twitterapime/parser/Parser;->parse(Ljava/io/InputStream;Lcom/twitterapime/parser/Handler;)V

    .line 911
    iget-object v3, p0, Lcom/twitterapime/rest/Timeline$1;->val$l:Lcom/twitterapime/search/SearchDeviceListener;

    invoke-interface {v3}, Lcom/twitterapime/search/SearchDeviceListener;->searchCompleted()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 916
    :try_start_1
    invoke-virtual {v0}, Lcom/twitterapime/io/HttpRequest;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 918
    .end local v1    # "resp":Lcom/twitterapime/io/HttpResponse;
    :goto_1
    return-void

    .line 900
    .end local v0    # "req":Lcom/twitterapime/io/HttpRequest;
    :cond_2
    new-instance v0, Lcom/twitterapime/io/HttpRequest;

    invoke-direct {v0, v2}, Lcom/twitterapime/io/HttpRequest;-><init>(Ljava/lang/String;)V

    .restart local v0    # "req":Lcom/twitterapime/io/HttpRequest;
    goto :goto_0

    .line 913
    :catch_0
    move-exception v3

    :try_start_2
    iget-object v3, p0, Lcom/twitterapime/rest/Timeline$1;->val$l:Lcom/twitterapime/search/SearchDeviceListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 916
    :try_start_3
    invoke-virtual {v0}, Lcom/twitterapime/io/HttpRequest;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 918
    :catch_1
    move-exception v3

    goto :goto_1

    .line 915
    :catchall_0
    move-exception v3

    .line 916
    :try_start_4
    invoke-virtual {v0}, Lcom/twitterapime/io/HttpRequest;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 917
    :goto_2
    throw v3

    .line 918
    .restart local v1    # "resp":Lcom/twitterapime/io/HttpResponse;
    :catch_2
    move-exception v3

    goto :goto_1

    .end local v1    # "resp":Lcom/twitterapime/io/HttpResponse;
    :catch_3
    move-exception v4

    goto :goto_2
.end method
