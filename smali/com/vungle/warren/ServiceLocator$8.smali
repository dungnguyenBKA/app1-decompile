.class Lcom/vungle/warren/ServiceLocator$8;
.super Lcom/vungle/warren/ServiceLocator$Creator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ServiceLocator;->buildCreators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/ServiceLocator;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ServiceLocator;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/ServiceLocator$8;->this$0:Lcom/vungle/warren/ServiceLocator;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vungle/warren/ServiceLocator$Creator;-><init>(Lcom/vungle/warren/ServiceLocator;Lcom/vungle/warren/ServiceLocator$1;)V

    return-void
.end method


# virtual methods
.method create()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator$8;->this$0:Lcom/vungle/warren/ServiceLocator;

    const-class v1, Lcom/vungle/warren/utility/Executors;

    invoke-static {v0, v1}, Lcom/vungle/warren/ServiceLocator;->access$100(Lcom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/utility/Executors;

    .line 2
    new-instance v1, Lcom/vungle/warren/log/LogManager;

    iget-object v2, p0, Lcom/vungle/warren/ServiceLocator$8;->this$0:Lcom/vungle/warren/ServiceLocator;

    invoke-static {v2}, Lcom/vungle/warren/ServiceLocator;->access$300(Lcom/vungle/warren/ServiceLocator;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/vungle/warren/ServiceLocator$8;->this$0:Lcom/vungle/warren/ServiceLocator;

    const-class v4, Lcom/vungle/warren/persistence/CacheManager;

    .line 3
    invoke-static {v3, v4}, Lcom/vungle/warren/ServiceLocator;->access$100(Lcom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vungle/warren/persistence/CacheManager;

    iget-object v4, p0, Lcom/vungle/warren/ServiceLocator$8;->this$0:Lcom/vungle/warren/ServiceLocator;

    const-class v5, Lcom/vungle/warren/VungleApiClient;

    .line 4
    invoke-static {v4, v5}, Lcom/vungle/warren/ServiceLocator;->access$100(Lcom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vungle/warren/VungleApiClient;

    .line 5
    invoke-interface {v0}, Lcom/vungle/warren/utility/Executors;->getLoggerExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/vungle/warren/log/LogManager;-><init>(Landroid/content/Context;Lcom/vungle/warren/persistence/CacheManager;Lcom/vungle/warren/VungleApiClient;Ljava/util/concurrent/Executor;)V

    return-object v1
.end method
