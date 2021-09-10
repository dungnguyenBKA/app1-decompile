.class public Lcom/vungle/warren/ui/JavascriptBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/ui/JavascriptBridge$MraidHandler;
    }
.end annotation


# instance fields
.field private handler:Lcom/vungle/warren/ui/JavascriptBridge$MraidHandler;


# direct methods
.method public constructor <init>(Lcom/vungle/warren/ui/JavascriptBridge$MraidHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vungle/warren/ui/JavascriptBridge;->handler:Lcom/vungle/warren/ui/JavascriptBridge$MraidHandler;

    return-void
.end method


# virtual methods
.method public performAction(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/JavascriptBridge;->handler:Lcom/vungle/warren/ui/JavascriptBridge$MraidHandler;

    invoke-interface {v0, p1}, Lcom/vungle/warren/ui/JavascriptBridge$MraidHandler;->onMraidAction(Ljava/lang/String;)V

    return-void
.end method
