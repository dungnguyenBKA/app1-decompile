.class public abstract Lvi0$j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvi0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "j"
.end annotation


# static fields
.field public static final a:Lvi0$j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lvi0$j$a;

    invoke-direct {v0}, Lvi0$j$a;-><init>()V

    sput-object v0, Lvi0$j;->a:Lvi0$j;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lvi0;)V
    .locals 0

    return-void
.end method

.method public abstract b(Laj0;)V
.end method
