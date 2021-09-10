.class public final synthetic Lpq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/json/JSONArray;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lorg/json/JSONArray;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpq;->b:Lorg/json/JSONArray;

    iput-object p2, p0, Lpq;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lpq;->b:Lorg/json/JSONArray;

    iget-object v1, p0, Lpq;->c:Landroid/content/Context;

    invoke-static {v0, v1}, Lsq;->d(Lorg/json/JSONArray;Landroid/content/Context;)V

    return-void
.end method
