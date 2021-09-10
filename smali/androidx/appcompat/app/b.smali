.class Landroidx/appcompat/app/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/widget/NestedScrollView$b;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AlertController;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p2, p0, Landroidx/appcompat/app/b;->a:Landroid/view/View;

    iput-object p3, p0, Landroidx/appcompat/app/b;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/core/widget/NestedScrollView;IIII)V
    .locals 0

    .line 1
    iget-object p2, p0, Landroidx/appcompat/app/b;->a:Landroid/view/View;

    iget-object p3, p0, Landroidx/appcompat/app/b;->b:Landroid/view/View;

    invoke-static {p1, p2, p3}, Landroidx/appcompat/app/AlertController;->d(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
