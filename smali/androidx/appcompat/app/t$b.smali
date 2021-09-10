.class Landroidx/appcompat/app/t$b;
.super Lj3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/t;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/t$b;->a:Landroidx/appcompat/app/t;

    invoke-direct {p0}, Lj3;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/appcompat/app/t$b;->a:Landroidx/appcompat/app/t;

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/appcompat/app/t;->t:Lq;

    .line 2
    iget-object p1, p1, Landroidx/appcompat/app/t;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
