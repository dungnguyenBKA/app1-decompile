.class Landroidx/core/widget/ContentLoadingProgressBar$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/ContentLoadingProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroidx/core/widget/ContentLoadingProgressBar;


# direct methods
.method constructor <init>(Landroidx/core/widget/ContentLoadingProgressBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/widget/ContentLoadingProgressBar$b;->b:Landroidx/core/widget/ContentLoadingProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/core/widget/ContentLoadingProgressBar$b;->b:Landroidx/core/widget/ContentLoadingProgressBar;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Landroidx/core/widget/ContentLoadingProgressBar$b;->b:Landroidx/core/widget/ContentLoadingProgressBar;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Landroidx/core/widget/ContentLoadingProgressBar$b;->b:Landroidx/core/widget/ContentLoadingProgressBar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Landroidx/core/widget/ContentLoadingProgressBar$b;->b:Landroidx/core/widget/ContentLoadingProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
