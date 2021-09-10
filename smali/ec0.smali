.class Lec0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Ldc0;


# direct methods
.method constructor <init>(Ldc0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lec0;->b:Ldc0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lec0;->b:Ldc0;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lec0;->b:Ldc0;

    invoke-virtual {v0}, Ldc0;->dismiss()V

    :cond_0
    return-void
.end method
