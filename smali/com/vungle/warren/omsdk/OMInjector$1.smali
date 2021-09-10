.class Lcom/vungle/warren/omsdk/OMInjector$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/omsdk/OMInjector;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/omsdk/OMInjector;


# direct methods
.method constructor <init>(Lcom/vungle/warren/omsdk/OMInjector;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/omsdk/OMInjector$1;->this$0:Lcom/vungle/warren/omsdk/OMInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    invoke-static {}, Le90;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/omsdk/OMInjector$1;->this$0:Lcom/vungle/warren/omsdk/OMInjector;

    invoke-static {v0}, Lcom/vungle/warren/omsdk/OMInjector;->access$000(Lcom/vungle/warren/omsdk/OMInjector;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Le90;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
