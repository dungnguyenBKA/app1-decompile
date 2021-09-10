.class public final synthetic Lqp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lyp;


# direct methods
.method public synthetic constructor <init>(Lyp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqp;->b:Lyp;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lqp;->b:Lyp;

    invoke-virtual {v0}, Lyp;->M()V

    return-void
.end method
