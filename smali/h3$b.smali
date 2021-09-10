.class Lh3$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh3;->i(Lk3;)Lh3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lk3;

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Lh3;Lk3;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lh3$b;->a:Lk3;

    iput-object p3, p0, Lh3$b;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lh3$b;->a:Lk3;

    iget-object v0, p0, Lh3$b;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Lk3;->a(Landroid/view/View;)V

    return-void
.end method
