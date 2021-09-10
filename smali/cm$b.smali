.class Lcm$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcm;->j(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;IIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroidx/appcompat/app/AppCompatActivity;

.field final synthetic c:Ljava/lang/Class;


# direct methods
.method constructor <init>(Landroid/view/View;Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcm$b;->a:Landroid/view/View;

    iput-object p2, p0, Lcm$b;->b:Landroidx/appcompat/app/AppCompatActivity;

    iput-object p3, p0, Lcm$b;->c:Ljava/lang/Class;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcm$b;->a:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcm$b;->b:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v0, p0, Lcm$b;->c:Ljava/lang/Class;

    invoke-static {p1, v0}, Lcm;->t(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;)V

    return-void
.end method
