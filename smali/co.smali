.class public final synthetic Lco;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Leo;


# direct methods
.method public synthetic constructor <init>(Leo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco;->b:Leo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lco;->b:Leo;

    invoke-virtual {v0}, Leo;->v()V

    return-void
.end method
