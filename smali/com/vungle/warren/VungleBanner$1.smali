.class Lcom/vungle/warren/VungleBanner$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/VungleBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/VungleBanner;


# direct methods
.method constructor <init>(Lcom/vungle/warren/VungleBanner;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/VungleBanner$1;->this$0:Lcom/vungle/warren/VungleBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/vungle/warren/VungleBanner;->access$000()Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/VungleBanner$1;->this$0:Lcom/vungle/warren/VungleBanner;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vungle/warren/VungleBanner;->access$102(Lcom/vungle/warren/VungleBanner;Z)Z

    .line 3
    iget-object v0, p0, Lcom/vungle/warren/VungleBanner$1;->this$0:Lcom/vungle/warren/VungleBanner;

    invoke-virtual {v0}, Lcom/vungle/warren/VungleBanner;->loadAdInternal()V

    return-void
.end method
