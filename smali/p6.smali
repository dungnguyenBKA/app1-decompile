.class public abstract Lp6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static b:Z = true


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/view/View;)V
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    sget-boolean v0, Lp6;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lp6;->b:Z

    .line 3
    sget-object v0, Lo6;->b:Lo6;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 4
    invoke-virtual {p0, p1}, Lp6;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method
