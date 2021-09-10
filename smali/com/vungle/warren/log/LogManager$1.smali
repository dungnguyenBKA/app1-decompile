.class Lcom/vungle/warren/log/LogManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/log/LogManager;->saveLog(Lcom/vungle/warren/VungleLogger$LoggerLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/log/LogManager;

.field final synthetic val$context:Ljava/lang/String;

.field final synthetic val$exClass:Ljava/lang/String;

.field final synthetic val$level:Lcom/vungle/warren/VungleLogger$LoggerLevel;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$threadId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vungle/warren/log/LogManager;Lcom/vungle/warren/VungleLogger$LoggerLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/log/LogManager$1;->this$0:Lcom/vungle/warren/log/LogManager;

    iput-object p2, p0, Lcom/vungle/warren/log/LogManager$1;->val$level:Lcom/vungle/warren/VungleLogger$LoggerLevel;

    iput-object p3, p0, Lcom/vungle/warren/log/LogManager$1;->val$message:Ljava/lang/String;

    iput-object p4, p0, Lcom/vungle/warren/log/LogManager$1;->val$context:Ljava/lang/String;

    iput-object p5, p0, Lcom/vungle/warren/log/LogManager$1;->val$exClass:Ljava/lang/String;

    iput-object p6, p0, Lcom/vungle/warren/log/LogManager$1;->val$threadId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    invoke-static {}, Lcom/vungle/warren/VungleApiClient;->getHeaderUa()Ljava/lang/String;

    move-result-object v5

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/log/LogManager$1;->this$0:Lcom/vungle/warren/log/LogManager;

    invoke-static {v0}, Lcom/vungle/warren/log/LogManager;->access$000(Lcom/vungle/warren/log/LogManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lj60;

    invoke-direct {v0}, Lj60;-><init>()V

    iget-object v1, p0, Lcom/vungle/warren/log/LogManager$1;->this$0:Lcom/vungle/warren/log/LogManager;

    invoke-static {v1}, Lcom/vungle/warren/log/LogManager;->access$000(Lcom/vungle/warren/log/LogManager;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj60;->h(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v7, v0

    .line 3
    iget-object v0, p0, Lcom/vungle/warren/log/LogManager$1;->val$level:Lcom/vungle/warren/VungleLogger$LoggerLevel;

    sget-object v1, Lcom/vungle/warren/VungleLogger$LoggerLevel;->CRASH:Lcom/vungle/warren/VungleLogger$LoggerLevel;

    const-string v4, ""

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/vungle/warren/log/LogManager$1;->this$0:Lcom/vungle/warren/log/LogManager;

    invoke-virtual {v0}, Lcom/vungle/warren/log/LogManager;->isCrashReportEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/vungle/warren/log/LogManager$1;->this$0:Lcom/vungle/warren/log/LogManager;

    invoke-static {v0}, Lcom/vungle/warren/log/LogManager;->access$200(Lcom/vungle/warren/log/LogManager;)Lcom/vungle/warren/log/LogPersister;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/log/LogManager$1;->val$message:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/warren/log/LogManager$1;->val$level:Lcom/vungle/warren/VungleLogger$LoggerLevel;

    invoke-virtual {v2}, Lcom/vungle/warren/VungleLogger$LoggerLevel;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vungle/warren/log/LogManager$1;->val$context:Ljava/lang/String;

    iget-object v6, p0, Lcom/vungle/warren/log/LogManager$1;->this$0:Lcom/vungle/warren/log/LogManager;

    invoke-static {v6}, Lcom/vungle/warren/log/LogManager;->access$100(Lcom/vungle/warren/log/LogManager;)Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/vungle/warren/log/LogManager$1;->val$exClass:Ljava/lang/String;

    iget-object v9, p0, Lcom/vungle/warren/log/LogManager$1;->val$threadId:Ljava/lang/String;

    invoke-virtual/range {v0 .. v9}, Lcom/vungle/warren/log/LogPersister;->saveCrashLogData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/vungle/warren/log/LogManager$1;->this$0:Lcom/vungle/warren/log/LogManager;

    invoke-virtual {v0}, Lcom/vungle/warren/log/LogManager;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/vungle/warren/log/LogManager$1;->this$0:Lcom/vungle/warren/log/LogManager;

    invoke-static {v0}, Lcom/vungle/warren/log/LogManager;->access$200(Lcom/vungle/warren/log/LogManager;)Lcom/vungle/warren/log/LogPersister;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/log/LogManager$1;->val$message:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/warren/log/LogManager$1;->val$level:Lcom/vungle/warren/VungleLogger$LoggerLevel;

    invoke-virtual {v2}, Lcom/vungle/warren/VungleLogger$LoggerLevel;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vungle/warren/log/LogManager$1;->val$context:Ljava/lang/String;

    iget-object v6, p0, Lcom/vungle/warren/log/LogManager$1;->this$0:Lcom/vungle/warren/log/LogManager;

    invoke-static {v6}, Lcom/vungle/warren/log/LogManager;->access$100(Lcom/vungle/warren/log/LogManager;)Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/vungle/warren/log/LogManager$1;->val$exClass:Ljava/lang/String;

    iget-object v9, p0, Lcom/vungle/warren/log/LogManager$1;->val$threadId:Ljava/lang/String;

    invoke-virtual/range {v0 .. v9}, Lcom/vungle/warren/log/LogPersister;->saveLogData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method
