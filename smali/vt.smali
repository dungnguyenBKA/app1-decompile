.class final synthetic Lvt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lxt;

.field private final c:Lit;

.field private final d:Lcs;

.field private final e:Let;


# direct methods
.method private constructor <init>(Lxt;Lit;Lcs;Let;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvt;->b:Lxt;

    iput-object p2, p0, Lvt;->c:Lit;

    iput-object p3, p0, Lvt;->d:Lcs;

    iput-object p4, p0, Lvt;->e:Let;

    return-void
.end method

.method public static a(Lxt;Lit;Lcs;Let;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lvt;

    invoke-direct {v0, p0, p1, p2, p3}, Lvt;-><init>(Lxt;Lit;Lcs;Let;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lvt;->b:Lxt;

    iget-object v1, p0, Lvt;->c:Lit;

    iget-object v2, p0, Lvt;->d:Lcs;

    iget-object v3, p0, Lvt;->e:Let;

    invoke-static {v0, v1, v2, v3}, Lxt;->c(Lxt;Lit;Lcs;Let;)V

    return-void
.end method
