<?php

use Twig\Environment;
use Twig\Error\LoaderError;
use Twig\Error\RuntimeError;
use Twig\Extension\SandboxExtension;
use Twig\Markup;
use Twig\Sandbox\SecurityError;
use Twig\Sandbox\SecurityNotAllowedTagError;
use Twig\Sandbox\SecurityNotAllowedFilterError;
use Twig\Sandbox\SecurityNotAllowedFunctionError;
use Twig\Source;
use Twig\Template;

/* persons/index.twig */
class __TwigTemplate_37e60f06eee916360b5a921adc779fb3 extends Template
{
    private $source;
    private $macros = [];

    public function __construct(Environment $env)
    {
        parent::__construct($env);

        $this->source = $this->getSourceContext();

        $this->parent = false;

        $this->blocks = [
            'content' => [$this, 'block_content'],
        ];
    }

    protected function doDisplay(array $context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 1
        $this->loadTemplate("layouts/base.twig", "persons/index.twig", 1)->display($context);
        echo " ";
        $this->displayBlock('content', $context, $blocks);
    }

    public function block_content($context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 2
        echo "
<main>
\t<section>
\t\t<h1>Personen overzicht</h1>
\t</section>
\t<section>
\t\t";
        // line 8
        if (twig_test_empty(($context["persons"] ?? null))) {
            // line 9
            echo "\t\t<span> Er zijn geen resultaten </span>
\t\t";
        } else {
            // line 11
            echo "\t\t<table class=\"table table-striped\">
\t\t\t<thead>
\t\t\t\t<tr>
\t\t\t\t\t<th>Voornaam</th>
\t\t\t\t\t<th>Tussenvoegsel</th>
\t\t\t\t\t<th>Achternaam</th>
\t\t\t\t\t<th></th>
\t\t\t\t</tr>
\t\t\t</thead>
\t\t\t<tbody>
\t\t\t\t";
            // line 21
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["persons"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["result"]) {
                // line 22
                echo "\t\t\t\t<tr>
\t\t\t\t\t<td>";
                // line 23
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["result"], "first_name", [], "any", false, false, false, 23), "html", null, true);
                echo "</td>
\t\t\t\t\t<td>";
                // line 24
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["result"], "insertion", [], "any", false, false, false, 24), "html", null, true);
                echo "</td>
\t\t\t\t\t<td>";
                // line 25
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["result"], "last_name", [], "any", false, false, false, 25), "html", null, true);
                echo "</td>
\t\t\t\t\t<td>
\t\t\t\t\t\t<a href=\"";
                // line 27
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["globals"] ?? null), "urlRoot", [], "any", false, false, false, 27), "html", null, true);
                echo "/persons/detail/";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["result"], "id", [], "any", false, false, false, 27), "html", null, true);
                echo "\"
\t\t\t\t\t\t\t>Bekijk</a
\t\t\t\t\t\t>
\t\t\t\t\t</td>
\t\t\t\t</tr>
\t\t\t\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['result'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 33
            echo "\t\t\t</tbody>
\t\t</table>
\t\t";
        }
        // line 36
        echo "\t</section>
</main>
";
    }

    public function getTemplateName()
    {
        return "persons/index.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  112 => 36,  107 => 33,  93 => 27,  88 => 25,  84 => 24,  80 => 23,  77 => 22,  73 => 21,  61 => 11,  57 => 9,  55 => 8,  47 => 2,  38 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "persons/index.twig", "C:\\Users\\turki\\Oefenexamen-Bowlingcentrum-medewerker-uitslag\\app\\views\\persons\\index.twig");
    }
}
