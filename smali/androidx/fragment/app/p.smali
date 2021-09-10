.class final Landroidx/fragment/app/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Landroidx/fragment/app/Fragment;

.field final synthetic c:Landroidx/fragment/app/Fragment;

.field final synthetic d:Z

.field final synthetic e:Lx;

.field final synthetic f:Landroid/view/View;

.field final synthetic g:Landroidx/fragment/app/w;

.field final synthetic h:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLx;Landroid/view/View;Landroidx/fragment/app/w;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/p;->b:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Landroidx/fragment/app/p;->c:Landroidx/fragment/app/Fragment;

    iput-boolean p3, p0, Landroidx/fragment/app/p;->d:Z

    iput-object p4, p0, Landroidx/fragment/app/p;->e:Lx;

    iput-object p5, p0, Landroidx/fragment/app/p;->f:Landroid/view/View;

    iput-object p6, p0, Landroidx/fragment/app/p;->g:Landroidx/fragment/app/w;

    iput-object p7, p0, Landroidx/fragment/app/p;->h:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/p;->b:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Landroidx/fragment/app/p;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v2, p0, Landroidx/fragment/app/p;->d:Z

    iget-object v3, p0, Landroidx/fragment/app/p;->e:Lx;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroidx/fragment/app/r;->c(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLx;Z)V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/p;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/p;->g:Landroidx/fragment/app/w;

    iget-object v2, p0, Landroidx/fragment/app/p;->h:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/w;->j(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method
