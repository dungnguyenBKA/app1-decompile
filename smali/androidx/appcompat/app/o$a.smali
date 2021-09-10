.class Landroidx/appcompat/app/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq2$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroidx/appcompat/app/o;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/o$a;->b:Landroidx/appcompat/app/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/o$a;->b:Landroidx/appcompat/app/o;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/o;->b(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
