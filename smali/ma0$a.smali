.class Lma0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lma0;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private b:Landroid/webkit/WebView;

.field final synthetic c:Lma0;


# direct methods
.method constructor <init>(Lma0;)V
    .locals 0

    iput-object p1, p0, Lma0$a;->c:Lma0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lma0;->k(Lma0;)Landroid/webkit/WebView;

    move-result-object p1

    iput-object p1, p0, Lma0$a;->b:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lma0$a;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method
